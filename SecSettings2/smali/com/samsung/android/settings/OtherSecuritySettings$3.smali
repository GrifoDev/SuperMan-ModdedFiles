.class Lcom/samsung/android/settings/OtherSecuritySettings$3;
.super Ljava/lang/Object;
.source "OtherSecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/OtherSecuritySettings;->screenPinningDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/OtherSecuritySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/OtherSecuritySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/OtherSecuritySettings$3;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings$3;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "access_control_use"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings$3;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/OtherSecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/OtherSecuritySettings$3;->this$0:Lcom/samsung/android/settings/OtherSecuritySettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/OtherSecuritySettings;->-wrap0(Lcom/samsung/android/settings/OtherSecuritySettings;Z)V

    return-void
.end method
