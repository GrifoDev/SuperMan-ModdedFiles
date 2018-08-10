.class Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;
.super Ljava/lang/Object;
.source "DirectAccessEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$DirectAccessCallback;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDirectAccessCallback:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$DirectAccessCallback;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$DirectAccessCallback;Landroid/widget/Switch;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mDialog:Landroid/app/AlertDialog;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mSwitch:Landroid/widget/Switch;

    iput-object p2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mDirectAccessCallback:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$DirectAccessCallback;

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    const v4, 0x7f0b0196

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_access"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "any_screen_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v6, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mDirectAccessCallback:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$DirectAccessCallback;

    invoke-interface {v2}, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler$DirectAccessCallback;->showExclusivePopup()V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const-string/jumbo v2, "DirectAccessEnabler"

    const-string/jumbo v3, "switch is on"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_access"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    if-ne v1, v6, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "direct_access"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "DirectAccessEnabler"

    const-string/jumbo v3, "switch is off"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "DirectAccessEnabler"

    const-string/jumbo v3, "switch error"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public resume()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "direct_access"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0
.end method
