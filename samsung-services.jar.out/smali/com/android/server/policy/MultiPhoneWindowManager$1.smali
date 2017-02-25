.class Lcom/android/server/policy/MultiPhoneWindowManager$1;
.super Ljava/lang/Object;
.source "MultiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MultiPhoneWindowManager;->minimizeOrSildeAllFreeform()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MultiPhoneWindowManager;

.field final synthetic val$taskId:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/MultiPhoneWindowManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/MultiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/MultiPhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/MultiPhoneWindowManager$1;->val$taskId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/MultiPhoneWindowManager$1;->this$0:Lcom/android/server/policy/MultiPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/MultiPhoneWindowManager;->-get0(Lcom/android/server/policy/MultiPhoneWindowManager;)Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/policy/MultiPhoneWindowManager$1;->val$taskId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeTask(I)V

    return-void
.end method
