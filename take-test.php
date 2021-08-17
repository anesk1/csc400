<?php
include 'db.php';

function get_verb($id){

global $DBcon;
$query = $DBcon->query("SELECT verb from verbs Where id='$id'");
$row = $query->fetch_array();
$verb = $row['verb'];
return $verb;
}

function get_test_type($id){

global $DBcon;
$query = $DBcon->query("SELECT type from tests Where verbId='$id'");
$row = $query->fetch_array();
$type = $row['type'];
return $type;
}

if(isset($_GET['t'])){
	
$verbTense = $_GET['t'];	
	
$verbs = $_GET['verbs'];

$verbs_array = explode(',',$verbs);

	
}else{
	
	header("location: index.php");
}


?>
<!DOCTYPE html>

<html lang="en" >
    <!--begin::Head-->
    <?php include 'head.php'; ?>
    <!--end::Head-->

    <!--begin::Body-->
    <body  id="kt_body"  class="header-fixed header-mobile-fixed subheader-enabled page-loading"  >

    	<!--begin::Main-->
	<!--begin::Header Mobile-->
<?php include 'header-mobile.php'; ?>
<!--end::Header Mobile-->
	<div class="d-flex flex-column flex-root">
		<!--begin::Page-->
		<div class="d-flex flex-row flex-column-fluid page">
			<!--begin::Wrapper-->
			<div class="d-flex flex-column flex-row-fluid wrapper" id="kt_wrapper">
				<!--begin::Header-->
<?php include 'header.php'; ?>
<!--end::Header-->

				<!--begin::Content-->
				<div class="content  d-flex flex-column flex-column-fluid" id="kt_content">
											<!--begin::Subheader-->
<div class="subheader py-2 py-lg-6  subheader-transparent " id="kt_subheader">
    <div class=" container  d-flex align-items-center justify-content-between flex-wrap flex-sm-nowrap">
		<!--begin::Info-->
        <div class="d-flex align-items-center flex-wrap mr-1">

			<!--begin::Page Heading-->
			<div class="d-flex align-items-baseline flex-wrap mr-5">
				<!--begin::Page Title-->
	            <h5 class="text-dark font-weight-bold my-1 mr-5">
	                Take the Test	                	            </h5>
				<!--end::Page Title-->

	            					<!--begin::Breadcrumb--
	                <ul class="breadcrumb breadcrumb-transparent breadcrumb-dot font-weight-bold p-0 my-2 font-size-sm">
	                    							<li class="breadcrumb-item">
	                        	<a href="" class="text-muted">
	                            	Pages	                        	</a>
							</li>
	                    							<li class="breadcrumb-item">
	                        	<a href="" class="text-muted">
	                            	Wizard 6	                        	</a>
							</li>
	                    	                </ul>
					<!--end::Breadcrumb-->
	            			</div>
			<!--end::Page Heading-->
        </div>
		<!--end::Info-->


    </div>
</div>
<!--end::Subheader-->

					<!--begin::Entry-->
	<div class="d-flex flex-column-fluid">
		<!--begin::Container-->
		<div class=" container ">
							<div class="card card-custom">
    <div class="card-body p-15">
           
		   <?php
		   
		      for($i=0; $i<sizeof($verbs_array);$i++)
			  {
		          $verb = $verbs_array[$i];
				  $verbName = get_verb($verb);
				  echo '<div class="bg-light-success p-3 mb-5">';
				   echo '<h4>Verb: '.$verbName.'</h4>';
				  
				  $testType = get_test_type($verb);
				  if($testType==1){
					  $testName= 'Fill in the blanks';
					  echo '<h5> '.$verbTense.' Tense</h5>';
				  }
				  elseif($testType==2){
					  $testName= 'Choose an option';
					  echo '<h5> '.$verbTense.' Tense</h5>';
				  }
				  elseif($testType==3){
					  $testName= 'Match Up';
				  }
				 
				  
				  echo '<h5> '.$testName.' Test</h5>';
				  echo '</div>';
		          $index = 0;
		          $query = $DBcon->query("SELECT * FROM tests WHERE verbId='$verb' ");
				  
					 while($row= $query->fetch_array())
					 {
						 
						 
						 if($row['type']==1){
						 
						  
						  echo '<div class="mb-15">
								<div class="form-group row">
									<label class="col-lg-4 col-form-label text-right">'.$row['question_start'].'</label>
									<div class="col-lg-4">
										<input type="text" class="form-control" placeholder="Enter Your Answer" name="question_'.$verb.'_'.$index.'" id="question_'.$verb.'_'.$index.'"/>
										 <span class="form-text answer_'.$verb.'_'.$index.'"></span>
									</div>
									<label class="col-lg-4 col-form-label ">'.$row['question_end'].'</label>
								</div>
							</div>';	
							 
						 }
						 
						 
						 if($row['type']==2){
						 
						  
						  echo '<div class="form-group row">
								<label class="col-lg-4 col-form-label text-right font-weight-bold">'.$row['question_start'].'</label>
								 <div class="col-lg-4">
								   <input type="text" size="20" class="mr-1 ml-1 form-control questionoption" readonly name="questionoption_'.$verb.'_'.$index.'" id="questionoption_'.$verb.'_'.$index.'" >
								    <span class="form-text  answeroption_'.$verb.'_'.$index.'"></span>
								  </div>	
								<label class="col-lg-4 col-form-label font-weight-bold">'.$row['question_end'].'</label>
								<div class="radio-list">
									<label class="radio">
										<input type="radio" class="radios" name="radios_'.$verb.'_'.$index.'" data-cont="'.$index.'" data-id="'.$verb.'" value="'.$row['option1'].'"/>
										<span></span>
										'.$row['option1'].'
									</label>
									<label class="radio">
										<input type="radio" class="radios" name="radios_'.$verb.'_'.$index.'" data-cont="'.$index.'" data-id="'.$verb.'" value="'.$row['option2'].'"/>
										<span></span>
										'.$row['option2'].'
									</label>
									<label class="radio">
										<input type="radio" class="radios" name="radios_'.$verb.'_'.$index.'" data-cont="'.$index.'" data-id="'.$verb.'" value="'.$row['option3'].'"/>
										<span></span>
										'.$row['option3'].'
									</label>
									<label class="radio">
										<input type="radio" class="radios" name="radios_'.$verb.'_'.$index.'" data-cont="'.$index.'" data-id="'.$verb.'" value="'.$row['option4'].'"/>
										<span></span>
										'.$row['option4'].'
									</label>
								</div>
							</div>';	
							 
						 }
						 
						 elseif($row['type']==3){
							 
							echo '<div class="mb-10">
									<div class="form-group row">
										<label class="col-lg-4 col-form-label">'.$row['question_start'].'</label>
										<label class="col-lg-4 col-form-label ">'.$row['question_end'].'</label>
										<div class="col-lg-4">
											<input type="text" class="form-control" placeholder="Enter Your Answer" name="questionmatch_'.$index.'" id="questionmatch_'.$index.'"/>
											 <span class="form-text answermatch_'.$index.'"></span>
										</div>
										
									</div>
								</div>';
							 
						 }
						 
						 
		                $index++;
		             }

			  }					 
		   
		   ?>
		   
		   <div id="results" class="mt-5  bg-light-success p-15" style="display:none;"></div>
		   
		   <input type="hidden" name="verbTense" id="verbTense" value="<?php echo $verbTense; ?>">
		   <input type="hidden" name="verbs" id="verbs" value="<?php echo $verbs; ?>">
		 <div class="mt-15">
		    <button type="button" class="btn btn-primary font-weight-bold" id="btn-checkresults">Check Results</button>
			
			<a href="index.php" class="btn btn-warning font-weight-bold">Practice some more</a>
		 </div>  
		   
    </div>
    <!--end::Wizard-->
</div>
					</div>
		<!--end::Container-->
	</div>
<!--end::Entry-->
				</div>
				<!--end::Content-->

				<!--begin::Footer-->
<?php include 'footer.php'; ?>
<!--end::Footer-->
			</div>
			<!--end::Wrapper-->
		</div>
		<!--end::Page-->
	</div>
<!--end::Main-->


        
        <script>
            var KTAppSettings = {
    "breakpoints": {
        "sm": 576,
        "md": 768,
        "lg": 992,
        "xl": 1200,
        "xxl": 1200
    },
    "colors": {
        "theme": {
            "base": {
                "white": "#ffffff",
                "primary": "#6993FF",
                "secondary": "#E5EAEE",
                "success": "#1BC5BD",
                "info": "#8950FC",
                "warning": "#FFA800",
                "danger": "#F64E60",
                "light": "#F3F6F9",
                "dark": "#212121"
            },
            "light": {
                "white": "#ffffff",
                "primary": "#E1E9FF",
                "secondary": "#ECF0F3",
                "success": "#C9F7F5",
                "info": "#EEE5FF",
                "warning": "#FFF4DE",
                "danger": "#FFE2E5",
                "light": "#F3F6F9",
                "dark": "#D6D6E0"
            },
            "inverse": {
                "white": "#ffffff",
                "primary": "#ffffff",
                "secondary": "#212121",
                "success": "#ffffff",
                "info": "#ffffff",
                "warning": "#ffffff",
                "danger": "#ffffff",
                "light": "#464E5F",
                "dark": "#ffffff"
            }
        },
        "gray": {
            "gray-100": "#F3F6F9",
            "gray-200": "#ECF0F3",
            "gray-300": "#E5EAEE",
            "gray-400": "#D6D6E0",
            "gray-500": "#B5B5C3",
            "gray-600": "#80808F",
            "gray-700": "#464E5F",
            "gray-800": "#1B283F",
            "gray-900": "#212121"
        }
    },
    "font-family": "Poppins"
};
        </script>
        <!--end::Global Config-->

    	<!--begin::Global Theme Bundle(used by all pages)-->
    	    	   <script src="assets/plugins/global/plugins.bundle.js"></script>
		    	   <script src="assets/plugins/custom/prismjs/prismjs.bundle.js"></script>
		    	   <script src="assets/js/scripts.bundle.js"></script>
				<!--end::Global Theme Bundle-->


<script>

$(document).ready(function(){
	
var correctas = 0;
var incorrectas = 0;
var question_cont = 0;

 $(document).on('click', '.radios', function(){ 		
		
			
		  var cont = $(this).data('cont');
		  
		  var answ = $(this).val();
		  
		  var verb = $(this).data('id');
		
			$("#questionoption_"+verb+"_"+cont).val(answ);
			
		});
	

function show_answers(id){
	
	
	var verbTense = $("#verbTense").val();
	
	  $.ajax({
				  type: "POST",
				  url: 'get_test.php',
				  data: {verbId: id},
				  success: function(response) 
				  {
				     	var json = $.parseJSON(response);
                        question_cont += json.length;			            
						
						for(var i = 0; i < json.length; i++) 
						{
								
						var testType = json[i].type;  
						var testName;
						
						    if(testType==1)
							{
							 testName = 'Fill in the blanks';
							 
							  if(verbTense=='past'){
								
                                   if( json[i].answer_past == $("#question_"+id+"_"+i).val() ){
									   $(".answer_"+id+"_"+i).html('<span class="text-success font-weight-bold">Correcta</span>');
									   correctas++;
								   }else{
									   $(".answer_"+id+"_"+i).html('<span class="text-danger font-weight-bold">Incorrecta</span>');
									   incorrectas++;
								   }								
							  }	
							if(verbTense=='present'){
								
                                   if( json[i].answer_present == $("#question_"+id+"_"+i).val() ){
									  $(".answer_"+id+"_"+i).html('<span class="text-success font-weight-bold">Correcta</span>');
									  correctas++;
								   }else{
									   $(".answer_"+id+"_"+i).html('<span class="text-danger font-weight-bold">Incorrecta</span>');
									   incorrectas++;
								     }		
								   								
							  }	
                             else if(verbTense=='future'){
								
                                   if( json[i].answer_future == $("#question_"+id+"_"+i).val() ){
									  $(".answer_"+id+"_"+i).html('<span class="text-success font-weight-bold">Correcta</span>');
									  correctas++;
								   }else{
									   $(".answer_"+id+"_"+i).html('<span class="text-danger font-weight-bold">Incorrecta</span>');
									   incorrectas++;
								    }		
								   								
							  }								  
						       
							
							
						    }
							
							
							if(testType==2)
							{
							  if(verbTense=='past'){
								
                                   if( json[i].answer_past == $("#questionoption_"+id+"_"+i).val() ){
									   $(".answeroption_"+id+"_"+i).html('<span class="text-success font-weight-bold">Correcta</span>');
									   correctas++;
								   }else{
									   $(".answeroption_"+id+"_"+i).html('<span class="text-danger font-weight-bold">Incorrecta</span>');
									   incorrectas++;
								   }								
							  }	
							if(verbTense=='present'){
								
                                   if( json[i].answer_present == $("#questionoption_"+id+"_"+i).val() ){
									  $(".answeroption_"+id+"_"+i).html('<span class="text-success font-weight-bold">Correcta</span>');
									  correctas++;
								   }else{
									   $(".answeroption_"+id+"_"+i).html('<span class="text-danger font-weight-bold">Incorrecta</span>');
									   incorrectas++;
								     }		
								   								
							  }	
                             else if(verbTense=='future'){
								
                                   if( json[i].answer_future == $("#questionoption_"+id+"_"+i).val() ){
									  $(".answeroption_"+id+"_"+i).html('<span class="text-success font-weight-bold">Correcta</span>');
									  correctas++;
								   }else{
									   $(".answeroption_"+id+"_"+i).html('<span class="text-danger font-weight-bold">Incorrecta</span>');
									   incorrectas++;
								    }		
								   								
							  }								  
						       
							
							
						    }
							
							else if(testType==3)
							{
							  
								
                                   if( json[i].answer_present == $("#questionmatch_"+i).val() ){
									   $(".answermatch_"+i).html('<span class="text-success font-weight-bold">Correcta</span>');
								   }else{
									   $(".answermatch_"+i).html('<span class="text-danger font-weight-bold">Incorrecta</span>');
								   }								
							 	
							
						    }
							
						
						}
						
						var correctas_perc = (correctas*100)/question_cont;
						correctas_perc = correctas_perc.toFixed(2);
						
						var incorrectas_perc = (incorrectas*100)/question_cont;
						incorrectas_perc = incorrectas_perc.toFixed(2);
						
						$("#results").show();
						
						$("#results").html('<h4>Your Results: </h4><hr /><div class="results font-size-h4"><b>'+question_cont+'</b> Questions</div>'+
						'<div class="results font-size-h4"><b>'+correctas+'</b> Correct Answers</div>'+
						'<div class="results font-size-h4"><b>'+incorrectas+'</b> Incorrect Answers</div>'+
						'<div class="results font-size-h4"><b>'+correctas_perc+'%</b> Correct Answers Percentage</div>');
						
						
				  }
				  
			     });
	
}
	

  $(document).on('click', '#btn-checkresults', function(){
	  
			
			
			var verbs = $("#verbs").val();
			
			verbs = verbs.split(",");
			
			for(var k=0;k<verbs.length;k++){
				
			  var id = verbs[k];	
				
				show_answers(id);
			    	
				
			}
		
			
			
	});
});
</script>
                  
            </body>
    <!--end::Body-->
</html>