.class Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$3;
.super Ljava/lang/Object;
.source "RecentsWindowViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->removeTask(Lcom/android/systemui/recents/model/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

.field final synthetic val$taskId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$3;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iput p2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$3;->val$taskId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$3;->this$0:Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;

    iget-object v1, v1, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter;->mActivityManager:Landroid/app/ActivityManager;

    iget v2, p0, Lcom/android/systemui/recents/desktop/views/RecentsWindowViewAdapter$3;->val$taskId:I

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->removeTask(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
