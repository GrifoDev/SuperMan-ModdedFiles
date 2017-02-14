.class Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$11;
.super Ljava/lang/Object;
.source "BrightnessSeekBarPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->showBrightnessAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$11;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$11;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->-set2(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
