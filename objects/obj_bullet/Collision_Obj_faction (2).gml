if(other==creator) exit;

instance_destroy();

/// check if object is part of our faction
if(other.faction==faction) exit;

//Damage object
with(other) event_perform(ev_other,ev_user1);