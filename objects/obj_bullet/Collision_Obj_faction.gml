if(other==creator) exit;
if(other.faction==faction) exit;
instance_destroy();

/// check if object is part of our faction

//Damage object
with(other) event_perform(ev_other,ev_user1);