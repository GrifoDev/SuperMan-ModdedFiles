.class Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$6;
.super Ljava/lang/Object;
.source "LedCoverCallerIDSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$6;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$6;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iput-boolean p2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mChecked:Z

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$6;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->updateActionbarState()V

    return-void
.end method
