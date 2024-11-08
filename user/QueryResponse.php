<?php
include("../connection.php");
session_start();

if(isset($_POST["question"]))
{
	/* replace special characters */
	$question = nl2br(preg_replace('/[^A-Za-z0-9\. -]/', '', $_POST["question"]));

	/* Add spacing identifier */
	$question_with_spacing = str_replace(" ", "_", strtolower(trim($question)));

	/* Replace underscores with spaces if needed */
	$question_with_spacing = str_replace("_", " ", $question_with_spacing);
	
	// Split the question into parts based on backslashes
    $sentences = preg_split('/\\\\/', $question, -1, PREG_SPLIT_NO_EMPTY);

    // For now, consider only the first part
    $question = trim($sentences[0]);
	
	$split = "";
	$key = array();
	$answer = "";
	$str = "";

	
	/* data store into array */
	$split = explode(" ", strtolower(trim($question)));
	
	/* all articles */
	$common = array("bs", "n", "nd", "guys", "be", "doing", "what" ,"will", "ask", "should" ,"its", "any", "the", "it", "we", "hot", "about", "dean", "program", "coordinator", "interested", "institute", "recommend", "recommended", "suggestion", "elective", "professional", "subject", "interest", "let", "get", "wanted", "well", "self", "may", "a", "an", "m", "by", "im", "looking", "available", "possible", "availability", "per", "to", "you", "me", "he", "she", "they", "we", "how", "it", "i", "are", "and", "to", "for", "of", "with", "is", "an", "at", "very", "too", "tell", "now", "need", "urgent", "urgently", "mean" , "help", "no", "this", "if", "couldn't", "could", "would", "wouldn't", "can", "can't", "in", "on", "him", "did", "all", "not", "get", "sent", "send", "do", "you", "u", "hv", "have", "had", "hd", "give","pls", "please", "your", "ur", "urs", "yours", "any", "using", "use", "uses", "relate", "related", "new", "contain", "contains", "or", "that", "i", "am", "get", "getting", "gets", "after", "all", "but", "from", "frm", "my", "so", "know", "knows", "of", "go", "though", "through", "which", "othr", "nw", "nd", "urg", "plz", "relates", "containing", "got", "want", "only", "arent", "based", "ne", "wid", "they", "that", "thats", "thats", "these", "until", "was", "wasnt", "suppose", "proj", "system", "here", "r", "my", "mine", "list", "topics", "domain", "project", "projects", "my", "myself", "am");
	
	
	foreach($split as $data)
	{
		if (!in_array($data, $common)) 
		{
			$select = "select * from question where main like '%".$data."%'";
			$result = mysqli_query($con, $select);
			$row = mysqli_fetch_array($result);	
			if($row)
			{
				$key = array($row["k1"], $row["k2"], $row["k3"], $row["k4"]);				
				$answer = $row["answer"];				
				break;
			}
			else{
				$answer = "I apologize, but I am having difficulty understanding your message. Could you please clarify? You can only ask about curriculum chatbot in City College of Angeles which is Professional Subject and Departments,";
				//$insert = "UPDATE `chat` SET `answer`='".$answer."' WHERE `chat_id` = '".$_POST["id"]."'";
				//$result1 = mysqli_query($con, $insert);
			}	
		}
	}

	$split = explode(" ", strtolower(trim($question)));

$all_common = true; // Default assumption is that all words are common

// Check if all words are common
foreach($split as $data) {
    if (!in_array($data, $common)) {
        $all_common = false; // If any word is not common, set to false
        break;
    }
}

	if ($all_common) {
		
		$answer = "Please try rephrasing your question again of what you are referring? You can only ask about Curriculum Chatbot in City College of Angeles which is Professional Courses, Departments, Officers, and Contact information.";
		$str = '<div class="row">
                <div class="col-md-1 text-right pr-0 mt-auto">
                    <i class="fas fa-chalkboard-user" style="background-color: #004d00; padding: 5px;color: white;border-radius: 16px;"></i>
                </div>
                &nbsp;&nbsp;
                <div class="col-md-8" style="background-color: #80808047;padding: 10px;border-radius: 20px 20px 20px 0px;">    
                    <span>'.$answer.'</span>
                </div>
                <div class="col-md-3">
                </div>
            </div>
            <br/>';

    echo $str;
    exit; // Exit to prevent further processing
	}
	
	if (isset($row) && is_array($row)) {
		$formatted_answer = nl2br(" " . str_replace("\n", "<br>• ", $row['answer']));
	} else {
		$formatted_answer = nl2br(" No answer available.");
	}
	
	
	if(isset($key)){
		
		$str = '<div class="row">
							<div class="col-md-1 text-right pr-0 mt-auto">
								<i class="fas fa-chalkboard-user" style="background-color: #004d00; padding: 5px;color: white;border-radius: 16px;"></i>
							</div>
							&nbsp;&nbsp;
							<div class="col-md-8" style="background-color: #80808047;padding: 10px;border-radius: 20px 20px 20px 0px;">	
								<span>'.$answer.'</span>
							</div>
							<div class="col-md-3">
							</div>
						</div>
						<br/>';
				$insert = "UPDATE `chat` SET `answer`='".$answer."' WHERE `chat_id` = '".$_POST["id"]."'";
				$result1 = mysqli_query($con, $insert);
	}
	else{
		
		foreach($split as $data)
		{
			if (in_array($data, $key)) 
			{	
				$str = '<div class="row">
							<div class="col-md-1 text-right pr-0 mt-auto">
								<i class="fas fa-chalkboard-user" style="background-color: #004d00; padding: 5px;color: white;border-radius: 16px;"></i>
							</div>
							&nbsp;&nbsp;
							<div class="col-md-8" style="background-color: #80808047;padding: 10px;border-radius: 20px 20px 20px 0px;">	
								<span>'.$answer.'</span>
							</div>
							<div class="col-md-3">
							</div>
						</div>
						<br/>';
				$insert = "UPDATE `chat` SET `answer`='".$answer."' WHERE `chat_id` = '".$_POST["id"]."'";
				$result1 = mysqli_query($con, $insert);
				break;
			}
			else
			{
				$str = '<div class="row">
							<div class="col-md-1 text-right pr-0 mt-auto">
								<i class="fas fa-chalkboard-user" style="background-color: #004d00; padding: 5px;color: white;border-radius: 16px;"></i>
							</div>
							&nbsp;&nbsp;
							<div class="col-md-8" style="background-color: #80808047;padding: 10px;border-radius: 20px 20px 20px 0px;">
								<span>I apologized can you repeat the question?</span>
							</div>
							<div class="col-md-3">
							</div>
						</div>
						<br/>';
						
				$insert = "UPDATE `chat` SET `answer`='I apologized can you repeat the question?' WHERE `chat_id` = '".$_POST["id"]."'";
				$result1 = mysqli_query($con, $insert);
				
			}
		}
	
	}	
	
	echo $str;
}
else
{
	$id = $_POST["id"];
	$question = addslashes($_POST["input"]);
	$insert = "INSERT INTO `chat`(`chat_id`, `user_id`, `question`) VALUES ('".$id."', '".$_SESSION["id"]."', '".$question."')";
	$result = mysqli_query($con, $insert);
	if($result)
	{
		$output["question_div"] = '<div class="row"">
										<div class="col-md-3">
										</div>
										<div class="col-md-8" style="background-color: #80808047;padding: 10px;border-radius: 20px 20px 20px 20px;">
											<span>'.nl2br($question).'</span>
										</div>
										<div class="col-md-1  text-right pl-0 mt-auto">
											<i class="fa fa-user" style="background-color: #004d00; padding: 5px; color: white; border-radius: 16px; margin-right: 45px;"></i>
										</div>
									</div>
									<br/>';
		$output["question"] = $question;
		$output["id"] = $id;
		echo json_encode($output);

		
		
	}
} 

?>