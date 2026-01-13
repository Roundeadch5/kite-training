cps = ds_list_size(click_times);

if (mouse_check_button_pressed(mb_any))
{
    ds_list_add(click_times, current_time);
}

while (ds_list_size(click_times) > 0 &&
       current_time - click_times[| 0] > 1000)
{
    ds_list_delete(click_times, 0);
}