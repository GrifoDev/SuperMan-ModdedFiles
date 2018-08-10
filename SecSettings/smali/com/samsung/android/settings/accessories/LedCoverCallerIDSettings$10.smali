.class Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$10;
.super Ljava/lang/Object;
.source "LedCoverCallerIDSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$10;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$10;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$10;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get7(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-wrap2(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;Z)V

    return-void
.end method
