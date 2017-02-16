.class final synthetic Lcom/android/systemui/recents/RecentsSystemUser$-void_updateRecentsVisibility_boolean_visible_LambdaImpl0;
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
    name = "-void_updateRecentsVisibility_boolean_visible_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$this:Lcom/android/systemui/recents/RecentsSystemUser;

.field private synthetic val$visible:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/RecentsSystemUser;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsSystemUser$-void_updateRecentsVisibility_boolean_visible_LambdaImpl0;->val$this:Lcom/android/systemui/recents/RecentsSystemUser;

    iput-boolean p2, p0, Lcom/android/systemui/recents/RecentsSystemUser$-void_updateRecentsVisibility_boolean_visible_LambdaImpl0;->val$visible:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser$-void_updateRecentsVisibility_boolean_visible_LambdaImpl0;->val$this:Lcom/android/systemui/recents/RecentsSystemUser;

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsSystemUser$-void_updateRecentsVisibility_boolean_visible_LambdaImpl0;->val$visible:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsSystemUser;->-com_android_systemui_recents_RecentsSystemUser_lambda$1(Z)V

    return-void
.end method
