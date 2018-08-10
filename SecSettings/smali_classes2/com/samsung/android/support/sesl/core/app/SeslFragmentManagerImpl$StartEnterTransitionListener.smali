.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;
.super Ljava/lang/Object;
.source "SeslFragmentManager.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartEnterTransitionListener"
.end annotation


# instance fields
.field private final mIsBack:Z

.field private mNumPostponed:I

.field private final mRecord:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;)Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    return-object v0
.end method


# virtual methods
.method public cancelTransaction()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    invoke-static {v0, v1, v2, v3, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->access$600(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;ZZZ)V

    return-void
.end method

.method public completeTransaction()V
    .locals 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-gtz v7, :cond_0

    move v0, v5

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-object v3, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v7, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_1

    iget-object v7, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-object v7, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-boolean v9, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    if-eqz v0, :cond_4

    :goto_2
    invoke-static {v7, v8, v9, v5, v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->access$600(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;ZZZ)V

    return-void

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    iget-object v7, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setOnStartEnterTransitionListener(Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;)V

    if-nez v0, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isPostponed()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->startPostponedEnterTransition()V

    goto :goto_3

    :cond_4
    move v5, v6

    goto :goto_2
.end method

.method public isReady()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onStartEnterTransition()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mRecord:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->access$500(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;)V

    return-void

    :cond_0
    return-void
.end method

.method public startListening()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$StartEnterTransitionListener;->mNumPostponed:I

    return-void
.end method
