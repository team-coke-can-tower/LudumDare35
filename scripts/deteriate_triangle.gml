///deteriate_shape()
///This is called in the context of a shape

if (current_health = full_health)
    {
    frame = 1;
    image_speed = 1;
    current_health -= 1;
    }
else 
    {
    current_health -= 1;

    if (current_health = 0)
        {
        instance_destroy();
        }
    else 
        {
        frame += 18;
        }
    }

