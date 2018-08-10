.class final Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;
.super Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
.source "SeslBackStackRecord.java"

# interfaces
.implements Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;
    }
.end annotation


# instance fields
.field mAddToBackStack:Z

.field mAllowAddToBackStack:Z

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field mBreadCrumbTitleRes:I

.field mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field mCommitRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mCommitted:Z

.field mEnterAnim:I

.field mExitAnim:I

.field mIndex:I

.field final mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

.field mName:Ljava/lang/String;

.field mOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;",
            ">;"
        }
    .end annotation
.end field

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mReorderingAllowed:Z

.field mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTransition:I

.field mTransitionStyle:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mAllowAddToBackStack:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mReorderingAllowed:Z

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    return-void
.end method

.method private doAddOp(ILcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/lang/String;I)V
    .locals 5

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SeslFragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iput-object v2, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez p3, :cond_3

    :goto_1
    if-nez p1, :cond_6

    :goto_2
    new-instance v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    invoke-direct {v2, p4, p2}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;-><init>(ILcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->addOp(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;)V

    return-void

    :cond_2
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_3
    iget-object v2, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    if-nez v2, :cond_5

    :cond_4
    iput-object p3, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v2, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t change tag of fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    const/4 v2, -0x1

    if-eq p1, v2, :cond_8

    iget v2, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    if-nez v2, :cond_9

    :cond_7
    iput p1, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    iput p1, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    goto :goto_2

    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t add fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " with tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to container view with no id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    iget v2, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    if-eq v2, p1, :cond_7

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Can\'t change container ID of fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " now "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static isFragmentPostponed(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isPostponed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public add(ILcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->doAddOp(ILcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method addOp(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mEnterAnim:I

    iput v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->enterAnim:I

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mExitAnim:I

    iput v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->exitAnim:I

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mPopEnterAnim:I

    iput v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popEnterAnim:I

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mPopExitAnim:I

    iput v0, p1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popExitAnim:I

    return-void
.end method

.method public attach(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;-><init>(ILcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->addOp(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;)V

    return-object p0
.end method

.method bumpBackStackNesting(I)V
    .locals 5

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mAddToBackStack:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v3, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v0, :cond_2

    return-void

    :cond_0
    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bump nesting in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SeslFragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v3, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v4, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    add-int/2addr v4, p1

    iput v4, v3, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    sget-boolean v3, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bump nesting of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v4, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SeslFragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public commit()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method commitInternal(Z)I
    .locals 5

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mCommitted:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v2, :cond_1

    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mCommitted:Z

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mAddToBackStack:Z

    if-nez v2, :cond_2

    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->enqueueAction(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$OpGenerator;Z)V

    iget v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    return v2

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "commit already called"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Commit: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SeslFragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;

    const-string/jumbo v2, "SeslFragmentManager"

    invoke-direct {v0, v2}, Lcom/samsung/android/support/sesl/core/util/SeslLogWriter;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string/jumbo v2, "  "

    invoke-virtual {p0, v2, v4, v1, v4}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v2, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->allocBackStackIndex(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    goto :goto_1
.end method

.method public detach(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;-><init>(ILcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->addOp(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;)V

    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7

    if-nez p3, :cond_1

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mName="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " mIndex="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, " mCommitted="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mCommitted:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransition:I

    if-nez v5, :cond_6

    :goto_1
    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mEnterAnim:I

    if-eqz v5, :cond_7

    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " mExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mPopEnterAnim:I

    if-eqz v5, :cond_8

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mPopEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mPopEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " mPopExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mPopExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v5, :cond_9

    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " mBreadCrumbTitleText="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :goto_4
    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v5, :cond_a

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mTransition=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransition:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " mTransitionStyle=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransitionStyle:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mExitAnim:I

    if-nez v5, :cond_2

    goto/16 :goto_2

    :cond_8
    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mPopExitAnim:I

    if-nez v5, :cond_3

    goto :goto_3

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-nez v5, :cond_4

    goto :goto_4

    :cond_a
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-nez v5, :cond_5

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "Operations:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v2, :cond_0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    iget v5, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    packed-switch v5, :pswitch_data_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-nez p3, :cond_c

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :pswitch_0
    const-string/jumbo v0, "NULL"

    goto :goto_6

    :pswitch_1
    const-string/jumbo v0, "ADD"

    goto :goto_6

    :pswitch_2
    const-string/jumbo v0, "REPLACE"

    goto :goto_6

    :pswitch_3
    const-string/jumbo v0, "REMOVE"

    goto :goto_6

    :pswitch_4
    const-string/jumbo v0, "HIDE"

    goto :goto_6

    :pswitch_5
    const-string/jumbo v0, "SHOW"

    goto :goto_6

    :pswitch_6
    const-string/jumbo v0, "DETACH"

    goto :goto_6

    :pswitch_7
    const-string/jumbo v0, "ATTACH"

    goto :goto_6

    :pswitch_8
    const-string/jumbo v0, "SET_PRIMARY_NAV"

    goto :goto_6

    :pswitch_9
    const-string/jumbo v0, "UNSET_PRIMARY_NAV"

    goto :goto_6

    :cond_c
    iget v5, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->enterAnim:I

    if-eqz v5, :cond_f

    :cond_d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "enterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->enterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " exitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->exitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_8
    iget v5, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popEnterAnim:I

    if-eqz v5, :cond_10

    :cond_e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "popEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " popExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    iget v5, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->exitAnim:I

    if-nez v5, :cond_d

    goto :goto_8

    :cond_10
    iget v5, v3, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popExitAnim:I

    if-nez v5, :cond_e

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method executeOps()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mReorderingAllowed:Z

    if-eqz v4, :cond_4

    :goto_1
    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    iget-object v0, v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_1

    :goto_2
    iget v4, v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransition:I

    iget v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransitionStyle:I

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setNextTransition(II)V

    goto :goto_2

    :pswitch_1
    iget v4, v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->enterAnim:I

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setNextAnim(I)V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v4, v0, v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->addFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    :goto_3
    iget-boolean v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mReorderingAllowed:Z

    if-eqz v4, :cond_3

    :cond_2
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_2
    iget v4, v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->exitAnim:I

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setNextAnim(I)V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->removeFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_3

    :pswitch_3
    iget v4, v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->exitAnim:I

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setNextAnim(I)V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->hideFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_3

    :pswitch_4
    iget v4, v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->enterAnim:I

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setNextAnim(I)V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->showFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_3

    :pswitch_5
    iget v4, v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->exitAnim:I

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setNextAnim(I)V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->detachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_3

    :pswitch_6
    iget v4, v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->enterAnim:I

    invoke-virtual {v0, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setNextAnim(I)V

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->attachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_3

    :pswitch_7
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->setPrimaryNavigationFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_3

    :pswitch_8
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v4, v7}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->setPrimaryNavigationFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_3

    :cond_3
    iget v4, v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    if-eq v4, v8, :cond_2

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveFragmentToExpectedState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget v5, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    invoke-virtual {v4, v5, v8}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(IZ)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method executePopOps(Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-gez v2, :cond_1

    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mReorderingAllowed:Z

    if-eqz v3, :cond_5

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    iget-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_2

    :goto_2
    iget v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransition:I

    invoke-static {v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->reverseTransit(I)I

    move-result v3

    iget v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mTransitionStyle:I

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setNextTransition(II)V

    goto :goto_2

    :pswitch_1
    iget v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setNextAnim(I)V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->removeFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    :goto_3
    iget-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mReorderingAllowed:Z

    if-eqz v3, :cond_4

    :cond_3
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :pswitch_2
    iget v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setNextAnim(I)V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v3, v0, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->addFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;Z)V

    goto :goto_3

    :pswitch_3
    iget v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setNextAnim(I)V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->showFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_3

    :pswitch_4
    iget v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setNextAnim(I)V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->hideFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_3

    :pswitch_5
    iget v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setNextAnim(I)V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->attachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_3

    :pswitch_6
    iget v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setNextAnim(I)V

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->detachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_3

    :pswitch_7
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v3, v6}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->setPrimaryNavigationFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_3

    :pswitch_8
    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->setPrimaryNavigationFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_3

    :cond_4
    iget v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveFragmentToExpectedState(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    goto :goto_4

    :cond_5
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v4, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget v4, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mCurState:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->moveToState(IZ)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method expandOps(Ljava/util/ArrayList;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ")",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;"
        }
    .end annotation

    const/16 v11, 0x9

    const/4 v6, 0x0

    :goto_0
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v6, v8, :cond_0

    return-object p2

    :cond_0
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    iget v8, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    packed-switch v8, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v8, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    iget-object v8, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v8, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-ne v8, p2, :cond_1

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    iget-object v10, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-direct {v9, v11, v10}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;-><init>(ILcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    invoke-virtual {v8, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    const/4 p2, 0x0

    goto :goto_1

    :pswitch_3
    iget-object v2, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v1, v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    :goto_2
    if-gez v3, :cond_2

    if-nez v0, :cond_6

    const/4 v8, 0x1

    iput v8, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v8, v4, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    if-eq v8, v1, :cond_3

    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    if-eq v4, v2, :cond_4

    if-eq v4, p2, :cond_5

    :goto_4
    new-instance v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    const/4 v8, 0x3

    invoke-direct {v7, v8, v4}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;-><init>(ILcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    iget v8, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->enterAnim:I

    iput v8, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->enterAnim:I

    iget v8, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popEnterAnim:I

    iput v8, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popEnterAnim:I

    iget v8, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->exitAnim:I

    iput v8, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->exitAnim:I

    iget v8, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popExitAnim:I

    iput v8, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->popExitAnim:I

    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    invoke-direct {v9, v11, v4}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;-><init>(ILcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    invoke-virtual {v8, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    const/4 p2, 0x0

    goto :goto_4

    :cond_6
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1

    :pswitch_4
    iget-object v8, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v9, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    invoke-direct {v9, v11, p2}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;-><init>(ILcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    invoke-virtual {v8, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    iget-object p2, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    sget-boolean v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->DEBUG:Z

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mAddToBackStack:Z

    if-nez v0, :cond_1

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SeslFragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->addBackStackState(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;)V

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method interactsWith(I)Z
    .locals 6

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v1, :cond_0

    return v4

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    iget-object v5, v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v5, :cond_2

    move v0, v4

    :goto_1
    if-nez v0, :cond_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, v2, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v0, v5, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    goto :goto_1

    :cond_3
    if-ne v0, p1, :cond_1

    const/4 v4, 0x1

    return v4
.end method

.method interactsWith(Ljava/util/ArrayList;II)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;",
            ">;II)Z"
        }
    .end annotation

    if-eq p3, p2, :cond_0

    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, -0x1

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v3, :cond_1

    const/4 v11, 0x0

    return v11

    :cond_0
    const/4 v11, 0x0

    return v11

    :cond_1
    iget-object v11, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    iget-object v11, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v11, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object v11, v5, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v0, v11, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    goto :goto_1

    :cond_4
    if-eq v0, v2, :cond_2

    move v2, v0

    move v1, p2

    :goto_2
    if-ge v1, p3, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

    iget-object v11, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v10, 0x0

    :goto_3
    if-lt v10, v4, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iget-object v11, v7, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    iget-object v11, v9, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v11, :cond_6

    const/4 v8, 0x0

    :goto_4
    if-eq v8, v0, :cond_7

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    iget-object v11, v9, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    iget v8, v11, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    goto :goto_4

    :cond_7
    const/4 v11, 0x1

    return v11
.end method

.method isPostponed()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->isFragmentPostponed(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public runOnCommitRunnables()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-lt v1, v0, :cond_1

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method setOnStartPostponedListener(Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->isFragmentPostponed(Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setOnStartEnterTransitionListener(Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "BackStackEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    if-gez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mName:Ljava/lang/String;

    if-nez v1, :cond_1

    :goto_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method trackAddedFragmentsInPop(Ljava/util/ArrayList;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ">;",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;",
            ")",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragment;"
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-object p2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;

    iget v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->cmd:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    iget-object v2, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    iget-object p2, v0, Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord$Op;->fragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    goto :goto_1

    :pswitch_4
    const/4 p2, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
