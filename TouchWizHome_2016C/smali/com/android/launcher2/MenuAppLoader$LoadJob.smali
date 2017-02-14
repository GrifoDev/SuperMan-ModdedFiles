.class Lcom/android/launcher2/MenuAppLoader$LoadJob;
.super Ljava/lang/Object;
.source "MenuAppLoader.java"

# interfaces
.implements Lcom/android/launcher2/utils/common/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher2/utils/common/ThreadPool$Job",
        "<",
        "Lcom/android/launcher2/AppItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mInfo:Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

.field private mItem:Lcom/android/launcher2/AppItem;

.field private mLoadType:I

.field private mUrgent:Z

.field private mUser:Lcom/android/launcher2/compat/UserHandleCompat;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppLoader;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppLoader;Lcom/android/launcher2/AppItem;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;IZ)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher2/MenuAppLoader$LoadJob;->this$0:Lcom/android/launcher2/MenuAppLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher2/MenuAppLoader$LoadJob;->mItem:Lcom/android/launcher2/AppItem;

    iput-object p3, p0, Lcom/android/launcher2/MenuAppLoader$LoadJob;->mInfo:Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    iput-object p4, p0, Lcom/android/launcher2/MenuAppLoader$LoadJob;->mUser:Lcom/android/launcher2/compat/UserHandleCompat;

    iput p5, p0, Lcom/android/launcher2/MenuAppLoader$LoadJob;->mLoadType:I

    iput-boolean p6, p0, Lcom/android/launcher2/MenuAppLoader$LoadJob;->mUrgent:Z

    sget v0, Lcom/android/launcher2/PkgResCache;->LOAD_ICON:I

    and-int/2addr v0, p5

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader$LoadJob;->mItem:Lcom/android/launcher2/AppItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppItem;->setLoadingState(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getThreadPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUrgent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppLoader$LoadJob;->mUrgent:Z

    return v0
.end method

.method public run(Lcom/android/launcher2/utils/common/ThreadPool$JobContext;)Lcom/android/launcher2/AppItem;
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppLoader$LoadJob;->getThreadPriority()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader$LoadJob;->this$0:Lcom/android/launcher2/MenuAppLoader;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppLoader$LoadJob;->mItem:Lcom/android/launcher2/AppItem;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppLoader$LoadJob;->mInfo:Lcom/android/launcher2/compat/LauncherActivityInfoCompat;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppLoader$LoadJob;->mUser:Lcom/android/launcher2/compat/UserHandleCompat;

    iget v4, p0, Lcom/android/launcher2/MenuAppLoader$LoadJob;->mLoadType:I

    # invokes: Lcom/android/launcher2/MenuAppLoader;->setTitleAndIcon(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;I)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/MenuAppLoader;->access$600(Lcom/android/launcher2/MenuAppLoader;Lcom/android/launcher2/AppItem;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;Lcom/android/launcher2/compat/UserHandleCompat;I)V

    iget v0, p0, Lcom/android/launcher2/MenuAppLoader$LoadJob;->mLoadType:I

    sget v1, Lcom/android/launcher2/PkgResCache;->LOAD_ICON:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader$LoadJob;->mItem:Lcom/android/launcher2/AppItem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppItem;->setLoadingState(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppLoader$LoadJob;->mItem:Lcom/android/launcher2/AppItem;

    return-object v0
.end method

.method public bridge synthetic run(Lcom/android/launcher2/utils/common/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppLoader$LoadJob;->run(Lcom/android/launcher2/utils/common/ThreadPool$JobContext;)Lcom/android/launcher2/AppItem;

    move-result-object v0

    return-object v0
.end method
