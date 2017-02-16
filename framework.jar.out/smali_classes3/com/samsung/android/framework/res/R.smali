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

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onResourcesLoaded(I)V
    .locals 3
    .param p0, "packageId"    # I

    .prologue
    const v2, 0xffffff

    .line 507
    sget v0, Lcom/samsung/android/framework/res/R$anim;->app_starting_exit_for_delaying:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->app_starting_exit_for_delaying:I

    .line 508
    sget v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_bottom:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_bottom:I

    .line 509
    sget v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_left:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_left:I

    .line 510
    sget v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_right:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_right:I

    .line 511
    sget v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_top:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->dualscreen_task_to_top:I

    .line 512
    sget v0, Lcom/samsung/android/framework/res/R$anim;->example_anim:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->example_anim:I

    .line 513
    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_docked_resize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_docked_resize:I

    .line 514
    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_freeze_default:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_freeze_default:I

    .line 515
    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_minimize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_minimize:I

    .line 516
    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_task_close_exit:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_task_close_exit:I

    .line 517
    sget v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_unminimize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$anim;->multiwindow_unminimize:I

    .line 518
    sget v0, Lcom/samsung/android/framework/res/R$array;->config_dualscreen_opposite_launch_app_list:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$array;->config_dualscreen_opposite_launch_app_list:I

    .line 519
    sget v0, Lcom/samsung/android/framework/res/R$array;->config_dualscreen_samsung_home_app_list:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$array;->config_dualscreen_samsung_home_app_list:I

    .line 520
    sget v0, Lcom/samsung/android/framework/res/R$array;->config_multiInstanceSupportAppList:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$array;->config_multiInstanceSupportAppList:I

    .line 521
    sget v0, Lcom/samsung/android/framework/res/R$array;->config_multiWindowSupportAppList:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$array;->config_multiWindowSupportAppList:I

    .line 522
    sget v0, Lcom/samsung/android/framework/res/R$color;->decor_button_dark_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$color;->decor_button_dark_color:I

    .line 523
    sget v0, Lcom/samsung/android/framework/res/R$color;->decor_button_light_color:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$color;->decor_button_light_color:I

    .line 524
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->cocktail_bar_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->cocktail_bar_size:I

    .line 525
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->docked_stack_divider_insets:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->docked_stack_divider_insets:I

    .line 526
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_decor_frame_thickness:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_decor_frame_thickness:I

    .line 527
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_def_longsize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_def_longsize:I

    .line 528
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_def_shortsize:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_def_shortsize:I

    .line 529
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_height:I

    .line 530
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_action_down_width:I

    .line 531
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_guide_start_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_guide_start_height:I

    .line 532
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_guide_start_width:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_freeform_gesture_guide_start_width:I

    .line 533
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_snapview_divider_panel_long:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->multiwindow_snapview_divider_panel_long:I

    .line 534
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->mw_divider_panel_long:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->mw_divider_panel_long:I

    .line 535
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->mw_divider_panel_short:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->mw_divider_panel_short:I

    .line 536
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->mw_dsv_divider_panel_long:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->mw_dsv_divider_panel_long:I

    .line 537
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->mw_dsv_divider_panel_short:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->mw_dsv_divider_panel_short:I

    .line 538
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_caption_ripple_radius:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_caption_ripple_radius:I

    .line 539
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_caption_ripple_size:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->samsung_decor_caption_ripple_size:I

    .line 540
    sget v0, Lcom/samsung/android/framework/res/R$dimen;->task_bar_height:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$dimen;->task_bar_height:I

    .line 541
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title:I

    .line 542
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title_focused:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title_focused:I

    .line 543
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title_unfocused:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_caption_title_unfocused:I

    .line 544
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_close_button_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_close_button_dark:I

    .line 545
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_close_button_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_close_button_light:I

    .line 546
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_ghost_button_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_ghost_button_dark:I

    .line 547
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_ghost_button_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_ghost_button_light:I

    .line 548
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_maximize_button_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_maximize_button_dark:I

    .line 549
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_maximize_button_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_maximize_button_light:I

    .line 550
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_minimize_button_dark:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_minimize_button_dark:I

    .line 551
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->decor_minimize_button_light:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->decor_minimize_button_light:I

    .line 552
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title:I

    .line 553
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title_focused:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title_focused:I

    .line 554
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title_unfocused:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_decor_caption_title_unfocused:I

    .line 555
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_mode_splash_image:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->desktop_mode_splash_image:I

    .line 556
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->dualscreen_backwindow:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->dualscreen_backwindow:I

    .line 557
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_caption_ripple_selector:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_caption_ripple_selector:I

    .line 558
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_close_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_close_button:I

    .line 559
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_close_with_padding_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_close_with_padding_button:I

    .line 560
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_maximize_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_maximize_button:I

    .line 561
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_maximize_with_padding_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_maximize_with_padding_button:I

    .line 562
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_minimize_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_minimize_button:I

    .line 563
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_minimize_with_padding_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_decor_minimize_with_padding_button:I

    .line 564
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_back_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_back_button:I

    .line 565
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_close_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_close_button:I

    .line 566
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_maximize_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_maximize_button:I

    .line 567
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_minimize_button:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_desktop_decor_minimize_button:I

    .line 568
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview:I

    .line 569
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support:I

    .line 570
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support_dream:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->samsung_multiwindow_guideview_not_support_dream:I

    .line 571
    sget v0, Lcom/samsung/android/framework/res/R$drawable;->stat_notify_desktop_mode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$drawable;->stat_notify_desktop_mode:I

    .line 572
    sget v0, Lcom/samsung/android/framework/res/R$id;->back_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->back_window:I

    .line 573
    sget v0, Lcom/samsung/android/framework/res/R$id;->caption:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->caption:I

    .line 574
    sget v0, Lcom/samsung/android/framework/res/R$id;->caption_end_container:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->caption_end_container:I

    .line 575
    sget v0, Lcom/samsung/android/framework/res/R$id;->close_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->close_window:I

    .line 576
    sget v0, Lcom/samsung/android/framework/res/R$id;->container:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->container:I

    .line 577
    sget v0, Lcom/samsung/android/framework/res/R$id;->display_chooser_grid:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->display_chooser_grid:I

    .line 578
    sget v0, Lcom/samsung/android/framework/res/R$id;->ghost_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->ghost_window:I

    .line 579
    sget v0, Lcom/samsung/android/framework/res/R$id;->icon:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->icon:I

    .line 580
    sget v0, Lcom/samsung/android/framework/res/R$id;->maximize_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->maximize_window:I

    .line 581
    sget v0, Lcom/samsung/android/framework/res/R$id;->minimize_window:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->minimize_window:I

    .line 582
    sget v0, Lcom/samsung/android/framework/res/R$id;->splash_image:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->splash_image:I

    .line 583
    sget v0, Lcom/samsung/android/framework/res/R$id;->text_activity_name:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->text_activity_name:I

    .line 584
    sget v0, Lcom/samsung/android/framework/res/R$id;->text_display_label:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$id;->text_display_label:I

    .line 585
    sget v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayDensity:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayDensity:I

    .line 586
    sget v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayHeight:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayHeight:I

    .line 587
    sget v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayWidth:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_DesktopModeDisplayWidth:I

    .line 588
    sget v0, Lcom/samsung/android/framework/res/R$integer;->config_dockedStackDividerSnapMode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->config_dockedStackDividerSnapMode:I

    .line 589
    sget v0, Lcom/samsung/android/framework/res/R$integer;->multiwindow_freeform_max_count:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->multiwindow_freeform_max_count:I

    .line 590
    sget v0, Lcom/samsung/android/framework/res/R$integer;->mw_example_integer:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$integer;->mw_example_integer:I

    .line 591
    sget v0, Lcom/samsung/android/framework/res/R$interpolator;->deceleration:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$interpolator;->deceleration:I

    .line 592
    sget v0, Lcom/samsung/android/framework/res/R$layout;->decor_caption:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->decor_caption:I

    .line 593
    sget v0, Lcom/samsung/android/framework/res/R$layout;->decor_caption_desktop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->decor_caption_desktop:I

    .line 594
    sget v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_loading_screen:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->desktop_mode_loading_screen:I

    .line 595
    sget v0, Lcom/samsung/android/framework/res/R$layout;->display_chooser_grid:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->display_chooser_grid:I

    .line 596
    sget v0, Lcom/samsung/android/framework/res/R$layout;->display_chooser_list_item:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$layout;->display_chooser_list_item:I

    .line 597
    sget v0, Lcom/samsung/android/framework/res/R$string;->back_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->back_button_text:I

    .line 598
    sget v0, Lcom/samsung/android/framework/res/R$string;->close_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->close_button_text:I

    .line 599
    sget v0, Lcom/samsung/android/framework/res/R$string;->desktop_mode:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->desktop_mode:I

    .line 600
    sget v0, Lcom/samsung/android/framework/res/R$string;->desktop_mode_description:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->desktop_mode_description:I

    .line 601
    sget v0, Lcom/samsung/android/framework/res/R$string;->dream_cant_use_this_app_in_multi_window_view_tpop:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->dream_cant_use_this_app_in_multi_window_view_tpop:I

    .line 602
    sget v0, Lcom/samsung/android/framework/res/R$string;->freeform_max_count_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->freeform_max_count_text:I

    .line 603
    sget v0, Lcom/samsung/android/framework/res/R$string;->ghost_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->ghost_button_text:I

    .line 604
    sget v0, Lcom/samsung/android/framework/res/R$string;->maximize_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->maximize_button_text:I

    .line 605
    sget v0, Lcom/samsung/android/framework/res/R$string;->minimize_button_text:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->minimize_button_text:I

    .line 606
    sget v0, Lcom/samsung/android/framework/res/R$string;->mirroring_mode_description:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->mirroring_mode_description:I

    .line 607
    sget v0, Lcom/samsung/android/framework/res/R$string;->msg_desktop_mode_app_not_supported:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->msg_desktop_mode_app_not_supported:I

    .line 608
    sget v0, Lcom/samsung/android/framework/res/R$string;->msg_desktop_mode_install_popup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->msg_desktop_mode_install_popup:I

    .line 609
    sget v0, Lcom/samsung/android/framework/res/R$string;->msg_desktop_mode_launch_popup:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->msg_desktop_mode_launch_popup:I

    .line 610
    sget v0, Lcom/samsung/android/framework/res/R$string;->msg_external_display_connected:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->msg_external_display_connected:I

    .line 611
    sget v0, Lcom/samsung/android/framework/res/R$string;->mw_example_string:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->mw_example_string:I

    .line 612
    sget v0, Lcom/samsung/android/framework/res/R$string;->txt_desktop_mode_install_popup_positive:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->txt_desktop_mode_install_popup_positive:I

    .line 613
    sget v0, Lcom/samsung/android/framework/res/R$string;->txt_desktop_mode_launch_popup_negative:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->txt_desktop_mode_launch_popup_negative:I

    .line 614
    sget v0, Lcom/samsung/android/framework/res/R$string;->txt_desktop_mode_launch_popup_positive:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$string;->txt_desktop_mode_launch_popup_positive:I

    .line 615
    sget v0, Lcom/samsung/android/framework/res/R$style;->loading_screen_animation:I

    and-int/2addr v0, v2

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/framework/res/R$style;->loading_screen_animation:I

    .line 506
    return-void
.end method
