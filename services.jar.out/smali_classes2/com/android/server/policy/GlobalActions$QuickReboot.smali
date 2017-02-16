.class Lcom/android/server/policy/GlobalActions$QuickReboot;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$QuickReboot;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/policy/GlobalActions;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$QuickReboot;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/policy/GlobalActions;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 4

    const v0, 0x1

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$QuickReboot;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 4

    const v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "setprop"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ctl.restart"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "zygote"

    aput-object v2, v0, v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public showConditional()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$QuickReboot;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "power_quick_reboot"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
