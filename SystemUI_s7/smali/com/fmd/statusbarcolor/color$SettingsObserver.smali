.class Lcom/fmd/statusbarcolor/color$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "color.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fmd/statusbarcolor/color;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fmd/statusbarcolor/color;


# direct methods
.method constructor <init>(Lcom/fmd/statusbarcolor/color;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/fmd/statusbarcolor/color$SettingsObserver;->this$0:Lcom/fmd/statusbarcolor/color;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/fmd/statusbarcolor/color$SettingsObserver;->this$0:Lcom/fmd/statusbarcolor/color;

    iget-object v1, v1, Lcom/fmd/statusbarcolor/color;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dynamic_status_bar_gradient_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "dynamic_status_bar_filter_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "dynamic_status_bar_color_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "dynamic_status_bar_filter_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "dynamic_toggle"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/fmd/statusbarcolor/color$SettingsObserver;->this$0:Lcom/fmd/statusbarcolor/color;

    invoke-virtual {v1}, Lcom/fmd/statusbarcolor/color;->UpdateSettings()V

    return-void
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/fmd/statusbarcolor/color$SettingsObserver;->this$0:Lcom/fmd/statusbarcolor/color;

    invoke-virtual {v0}, Lcom/fmd/statusbarcolor/color;->UpdateSettings()V

    return-void
.end method
