.class Lcom/samsung/android/settings/display/AutoBrightness$4;
.super Ljava/lang/Object;
.source "AutoBrightness.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/AutoBrightness;->showResetPatternDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/AutoBrightness;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/AutoBrightness;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/AutoBrightness$4;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness$4;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/AutoBrightness;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness$4;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/AutoBrightness;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
