.class final synthetic Lcom/android/systemui/recents/RecentsSystemUser$-void_startScreenPinning_int_taskId_LambdaImpl0;
.super Ljava/lang/Object;
.source "RecentsSystemUser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsSystemUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_startScreenPinning_int_taskId_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$taskId:I

.field private synthetic val$this:Lcom/android/systemui/recents/RecentsSystemUser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/RecentsSystemUser;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsSystemUser$-void_startScreenPinning_int_taskId_LambdaImpl0;->val$this:Lcom/android/systemui/recents/RecentsSystemUser;

    iput p2, p0, Lcom/android/systemui/recents/RecentsSystemUser$-void_startScreenPinning_int_taskId_LambdaImpl0;->val$taskId:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser$-void_startScreenPinning_int_taskId_LambdaImpl0;->val$this:Lcom/android/systemui/recents/RecentsSystemUser;

    iget v1, p0, Lcom/android/systemui/recents/RecentsSystemUser$-void_startScreenPinning_int_taskId_LambdaImpl0;->val$taskId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->-com_android_systemui_recents_RecentsSystemUser_lambda$2(I)V

    return-void
.end method
