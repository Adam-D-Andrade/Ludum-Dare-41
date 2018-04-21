/// @description MakeUnique()

//Makes sure only one bject exists (can be useful)
if instance_number(object_index) > 1 {
	instance_destroy();
}
