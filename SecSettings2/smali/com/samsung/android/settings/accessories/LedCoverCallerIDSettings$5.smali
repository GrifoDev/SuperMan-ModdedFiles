.class Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$5;
.super Ljava/lang/Object;
.source "LedCoverCallerIDSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;
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

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$5;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/16 v1, 0x42

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$5;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get2(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Lcom/samsung/android/settings/accessories/LedIconGridView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/LedIconGridView;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$5;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$5;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-boolean v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mChecked:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, v1, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mChecked:Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$5;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->notifyDataSetChanged()V

    :cond_0
    return v3

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
