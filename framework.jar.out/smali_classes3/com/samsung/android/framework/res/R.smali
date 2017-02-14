.class public final Lcom/samsung/android/framework/res/R;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/framework/res/R$anim;,
        Lcom/samsung/android/framework/res/R$array;,
        Lcom/samsung/android/framework/res/R$attr;,
        Lcom/samsung/android/framework/res/R$color;,
        Lcom/samsung/android/framework/res/R$dimen;,
        Lcom/samsung/android/framework/res/R$drawable;,
        Lcom/samsung/android/framework/res/R$id;,
        Lcom/samsung/android/framework/res/R$integer;,
        Lcom/samsung/android/framework/res/R$interpolator;,
        Lcom/samsung/android/framework/res/R$layout;,
        Lcom/samsung/android/framework/res/R$string;,
        Lcom/samsung/android/framework/res/R$style;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onResourcesLoaded(I)V
    .locals 3

    const v2, 0xffffff

    sget v0, Lcom/samsung/android/framework/res/R$anim;->app_starting_exit_for_delaying:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->app_starting_exit_for_delaying:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_bottom:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_left:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_right:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_top:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->example_anim:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->example_anim:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_docked_resize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_docked_resize:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_freeze_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_freeze_default:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_minimize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_minimize:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_task_close_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_task_close_exit:I

    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_unminimize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_unminimize:I

    sget v0, Lcom/samsung/android/framework/res/R$array;->config_dualscreen_opposite_launch_app_list:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$array;->config_dualscreen_opposite_launch_app_list:I

    sget v0, Lcom/samsung/android/framework/res/R$array;->config_dualscreen_samsung_home_app_list:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$array;->config_dualscreen_samsung_home_app_list:I

    sget v0, Lcom/samsung/android/framework/res/R$array;->config_multiInstanceSupportAppList:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$array;->config_multiInstanceSupportAppList:I

    sget v0, Lcom/samsung/android/framework/res/R$array;->config_multiWindowSupportAppList:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$array;->config_multiWindowSupportAppList:I

    sget v0, Lcom/samsung/android/framework/res/R$color;->decor_button_dark_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$color;->decor_button_dark_color:I

    sget v0, Lcom/samsung/android/framework/res/R$color;->decor_button_light_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$color;->decor_button_light_color:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->cocktail_bar_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->cocktail_bar_size:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->docked_stack_divider_insets:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->docked_stack_divider_insets:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_decor_frame_thickness:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_decor_frame_thickness:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_def_longsize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_def_longsize:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_def_shortsize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_def_shortsize:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_height:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_width:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_guide_start_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_guide_start_height:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_guide_start_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_guide_start_width:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_snapview_divider_panel_long:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_snapview_divider_panel_long:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->mw_divider_panel_long:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->mw_divider_panel_long:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->mw_divider_panel_short:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->mw_divider_panel_short:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->mw_dsv_divider_panel_long:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->mw_dsv_divider_panel_long:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->mw_dsv_divider_panel_short:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->mw_dsv_divider_panel_short:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_caption_ripple_radius:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_caption_ripple_radius:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_caption_ripple_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_caption_ripple_size:I

    sget v0, Lcom/samsung/android/framework/res/R$dimen;->task_bar_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->task_bar_height:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title_focused:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title_focused:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title_unfocused:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title_unfocused:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_close_button_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_close_button_dark:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_close_button_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_close_button_light:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_ghost_button_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_ghost_button_dark:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_ghost_button_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_ghost_button_light:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_maximize_button_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_maximize_button_dark:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_maximize_button_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_maximize_button_light:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_minimize_button_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_minimize_button_dark:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_minimize_button_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_minimize_button_light:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title_focused:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title_focused:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title_unfocused:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title_unfocused:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_mode_splash_image:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_mode_splash_image:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dualscreen_backwindow:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dualscreen_backwindow:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_caption_ripple_selector:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_caption_ripple_selector:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_close_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_close_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_close_with_padding_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_close_with_padding_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_maximize_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_maximize_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_maximize_with_padding_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_maximize_with_padding_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_minimize_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_minimize_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_minimize_with_padding_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_minimize_with_padding_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_back_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_back_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_close_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_close_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_maximize_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_maximize_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_minimize_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_minimize_button:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support_dream:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support_dream:I

    sget v0, Lcom/samsung/android/framework/res/R$drawable;->stat_notify_desktop_mode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->stat_notify_desktop_mode:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->back_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->back_window:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->caption:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->caption:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->caption_end_container:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->caption_end_container:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->close_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->close_window:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->container:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->container:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->display_chooser_grid:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->display_chooser_grid:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->ghost_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->ghost_window:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->icon:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->maximize_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->maximize_window:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->minimize_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->minimize_window:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->splash_image:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->splash_image:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->text_activity_name:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->text_activity_name:I

    sget v0, Lcom/samsung/android/framework/res/R$id;->text_display_label:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->text_display_label:I

    sget v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayDensity:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayDensity:I

    sget v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayHeight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayHeight:I

    sget v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayWidth:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayWidth:I

    sget v0, Lcom/samsung/android/framework/res/R$integer;->config_dockedStackDividerSnapMode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_dockedStackDividerSnapMode:I

    sget v0, Lcom/samsung/android/framework/res/R$integer;->multiwindow_freeform_max_count:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->multiwindow_freeform_max_count:I

    sget v0, Lcom/samsung/android/framework/res/R$integer;->mw_example_integer:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->mw_example_integer:I

    sget v0, Lcom/samsung/android/framework/res/R$interpolator;->deceleration:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$interpolator;->deceleration:I

    sget v0, Lcom/samsung/android/framework/res/R$layout;->decor_caption:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->decor_caption:I

    sget v0, Lcom/samsung/android/framework/res/R$layout;->decor_caption_desktop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->decor_caption_desktop:I

    sget v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_loading_screen:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_loading_screen:I

    sget v0, Lcom/samsung/android/framework/res/R$layout;->display_chooser_grid:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->display_chooser_grid:I

    sget v0, Lcom/samsung/android/framework/res/R$layout;->display_chooser_list_item:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->display_chooser_list_item:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->back_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->back_button_text:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->close_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->close_button_text:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->desktop_mode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->desktop_mode:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->desktop_mode_description:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->desktop_mode_description:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->dream_cant_use_this_app_in_multi_window_view_tpop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dream_cant_use_this_app_in_multi_window_view_tpop:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->freeform_max_count_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->freeform_max_count_text:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->ghost_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->ghost_button_text:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->maximize_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->maximize_button_text:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->minimize_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->minimize_button_text:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->mirroring_mode_description:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->mirroring_mode_description:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->msg_desktop_mode_app_not_supported:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->msg_desktop_mode_app_not_supported:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->msg_desktop_mode_install_popup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->msg_desktop_mode_install_popup:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->msg_desktop_mode_launch_popup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->msg_desktop_mode_launch_popup:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->msg_external_display_connected:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->msg_external_display_connected:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->mw_example_string:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->mw_example_string:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->txt_desktop_mode_install_popup_positive:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->txt_desktop_mode_install_popup_positive:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->txt_desktop_mode_launch_popup_negative:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->txt_desktop_mode_launch_popup_negative:I

    sget v0, Lcom/samsung/android/framework/res/R$string;->txt_desktop_mode_launch_popup_positive:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->txt_desktop_mode_launch_popup_positive:I

    sget v0, Lcom/samsung/android/framework/res/R$style;->loading_screen_animation:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$style;->loading_screen_animation:I

    return-void
.end method
