<!--DONOR APPLICATION MODAL-->
<div class="modal fade" id="donorApplicationModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">New application</h4>
                <p>Tell us where you are, we tell you when we shall be there.</p>
            </div>
            <div class="modal-body" id="deleteModal_body">
                <form role="form" onsubmit="return validateDonorForm()" method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>">                    
                    <div class="form-group">
                        <div class="input-group" >
                            <input name="donor_location" type="text" onFocus="geolocate()" class="form-control" id="autocomplete" placeholder="Enter your location"> 
                        </div>                       
                    </div>
                    <div class="form-group">
                    <div class="input-group">
                            <select name="donor_site" id="donor_site" class="form-control">
                                <option value="0">Available sites</option>                                
                            </select>                           
                        </div>                     
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input name="donate_age" type="date" id="donate_age" class="form-control" placeholder="Current schedule">
                        </div>
                    </div>                    
                    <div class="col-md-4">
                        <span id="notification-par"><?php echo $user->status; ?></span>
                    </div>
                    <div class="modal-footer">
                        <input type="submit" class="button  btn_blue btn_full" name="action" value="APPLY"><br/>                       
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>

