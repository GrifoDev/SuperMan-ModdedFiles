.class final Landroid/app/BackStackRecord;
.super Landroid/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/app/FragmentManager$BackStackEntry;
.implements Landroid/app/FragmentManagerImpl$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BackStackRecord$Op;
    }
.end annotation


# static fields
.field static final OP_ADD:I = 0x1

.field static final OP_ATTACH:I = 0x7

.field static final OP_DETACH:I = 0x6

.field static final OP_HIDE:I = 0x4

.field static final OP_NULL:I = 0x0

.field static final OP_REMOVE:I = 0x3

.field static final OP_REPLACE:I = 0x2

.field static final OP_SET_PRIMARY_NAV:I = 0x8

.field static final OP_SHOW:I = 0x5

.field static final OP_UNSET_PRIMARY_NAV:I = 0x9

.field static final TAG:Ljava/lang/String; = "FragmentManager"


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

.field final mManager:Landroid/app/FragmentManagerImpl;

.field mName:Ljava/lang/String;

.field mOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord$Op;",
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
.method public constructor <init>(Landroid/app/FragmentManagerImpl;)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/app/FragmentTransaction;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/app/BackStackRecord;->mIndex:I

    iput-object p1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/app/FragmentManagerImpl;->getTargetSdk()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V
    .locals 5

    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/app/FragmentManagerImpl;->getTargetSdk()I

    move-result v2

    const/16 v3, 0x19

    if-le v2, v3, :cond_1

    invoke-virtual {p2}, Landroid/app/Fragment;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " must be a public static class to be  properly recreated from"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " instance state."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iput-object v2, p2, Landroid/app/Fragment;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    if-eqz p3, :cond_3

    iget-object v2, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

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

    iget-object v4, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

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

    :cond_2
    iput-object p3, p2, Landroid/app/Fragment;->mTag:Ljava/lang/String;

    :cond_3
    if-eqz p1, :cond_6

    const/4 v2, -0x1

    if-ne p1, v2, :cond_4

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

    :cond_4
    iget v2, p2, Landroid/app/Fragment;->mFragmentId:I

    if-eqz v2, :cond_5

    iget v2, p2, Landroid/app/Fragment;->mFragmentId:I

    if-eq v2, p1, :cond_5

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

    iget v4, p2, Landroid/app/Fragment;->mFragmentId:I

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

    :cond_5
    iput p1, p2, Landroid/app/Fragment;->mFragmentId:I

    iput p1, p2, Landroid/app/Fragment;->mContainerId:I

    :cond_6
    new-instance v2, Landroid/app/BackStackRecord$Op;

    invoke-direct {v2, p4, p2}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    invoke-virtual {p0, v2}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    return-void
.end method

.method private static isFragmentPostponed(Landroid/app/BackStackRecord$Op;)Z
    .locals 2

    iget-object v0, p0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroid/app/Fragment;->mDetached:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroid/app/Fragment;->mHidden:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isPostponed()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method addOp(Landroid/app/BackStackRecord$Op;)V
    .locals 1

    iget-object v0, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    iput v0, p1, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iget v0, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    iput v0, p1, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iget v0, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    iput v0, p1, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iget v0, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    iput v0, p1, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    return-void
.end method

.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unique transitionNames are required for all sharedElements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    :cond_1
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_2
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "A shared element with the target name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\' has already been added to the transaction."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v1, p0, Landroid/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "A shared element with the source name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " has already been added to the transaction."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 2

    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    iput-object p1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2

    new-instance v0, Landroid/app/BackStackRecord$Op;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    return-object p0
.end method

.method bumpBackStackNesting(I)V
    .locals 6

    iget-boolean v3, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bump nesting in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord$Op;

    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v3, :cond_2

    iget-object v3, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v4, v3, Landroid/app/Fragment;->mBackStackNesting:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/app/Fragment;->mBackStackNesting:I

    sget-boolean v3, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v5, v5, Landroid/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public commit()I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method commitInternal(Z)I
    .locals 6

    const/4 v5, 0x0

    iget-boolean v2, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "commit already called"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    sget-boolean v2, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Commit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/LogWriter;

    const-string/jumbo v2, "FragmentManager"

    const/4 v3, 0x2

    invoke-direct {v0, v3, v2}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;)V

    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    const-string/jumbo v2, "  "

    invoke-virtual {p0, v2, v5, v1, v5}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    iget-boolean v2, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v2, p0}, Landroid/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/app/BackStackRecord;)I

    move-result v2

    iput v2, p0, Landroid/app/BackStackRecord;->mIndex:I

    :goto_0
    iget-object v2, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v2, p0, p1}, Landroid/app/FragmentManagerImpl;->enqueueAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    iget v2, p0, Landroid/app/BackStackRecord;->mIndex:I

    return v2

    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Landroid/app/BackStackRecord;->mIndex:I

    goto :goto_0
.end method

.method public commitNow()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/BackStackRecord;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/FragmentManagerImpl;->execSingleAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    return-void
.end method

.method public commitNowAllowingStateLoss()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/BackStackRecord;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/app/FragmentManagerImpl;->execSingleAction(Landroid/app/FragmentManagerImpl$OpGenerator;Z)V

    return-void
.end method

.method public detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2

    new-instance v0, Landroid/app/BackStackRecord$Op;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    return-object p0
.end method

.method public disallowAddToBackStack()Landroid/app/FragmentTransaction;
    .locals 2

    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p3, v0}, Landroid/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 7

    if-eqz p3, :cond_8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mName="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " mIndex="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, " mCommitted="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, p0, Landroid/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    if-eqz v5, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mTransition=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " mTransitionStyle=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget v5, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    if-nez v5, :cond_1

    iget v5, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    if-eqz v5, :cond_2

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " mExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget v5, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    if-nez v5, :cond_3

    iget v5, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    if-eqz v5, :cond_4

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mPopEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " mPopExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_4
    iget v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_6

    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " mBreadCrumbTitleText="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez v5, :cond_7

    iget-object v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v5, :cond_8

    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " mBreadCrumbShortTitleText="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v5, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

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

    iget-object v5, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_d

    iget-object v5, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/BackStackRecord$Op;

    iget v5, v3, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v5, :pswitch_data_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cmd="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "  Op #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v3, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    iget v5, v3, Landroid/app/BackStackRecord$Op;->enterAnim:I

    if-nez v5, :cond_9

    iget v5, v3, Landroid/app/BackStackRecord$Op;->exitAnim:I

    if-eqz v5, :cond_a

    :cond_9
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "enterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Landroid/app/BackStackRecord$Op;->enterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " exitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Landroid/app/BackStackRecord$Op;->exitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget v5, v3, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    if-nez v5, :cond_b

    iget v5, v3, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    if-eqz v5, :cond_c

    :cond_b
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, "popEnterAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v5, " popExitAnim=#"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v3, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo v0, "NULL"

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "ADD"

    goto :goto_1

    :pswitch_2
    const-string/jumbo v0, "REPLACE"

    goto/16 :goto_1

    :pswitch_3
    const-string/jumbo v0, "REMOVE"

    goto/16 :goto_1

    :pswitch_4
    const-string/jumbo v0, "HIDE"

    goto/16 :goto_1

    :pswitch_5
    const-string/jumbo v0, "SHOW"

    goto/16 :goto_1

    :pswitch_6
    const-string/jumbo v0, "DETACH"

    goto/16 :goto_1

    :pswitch_7
    const-string/jumbo v0, "ATTACH"

    goto/16 :goto_1

    :pswitch_8
    const-string/jumbo v0, "SET_PRIMARY_NAV"

    goto/16 :goto_1

    :pswitch_9
    const-string/jumbo v0, "UNSET_PRIMARY_NAV"

    goto/16 :goto_1

    :cond_d
    return-void

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
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BackStackRecord$Op;

    iget-object v0, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget v4, p0, Landroid/app/BackStackRecord;->mTransition:I

    iget v5, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v0, v4, v5}, Landroid/app/Fragment;->setNextTransition(II)V

    :cond_0
    iget v4, v2, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    iget v4, v2, Landroid/app/BackStackRecord$Op;->enterAnim:I

    invoke-virtual {v0, v4}, Landroid/app/Fragment;->setNextAnim(I)V

    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    :goto_1
    iget-boolean v4, p0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v4, :cond_1

    iget v4, v2, Landroid/app/BackStackRecord$Op;->cmd:I

    if-eq v4, v7, :cond_1

    if-eqz v0, :cond_1

    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v4, v0}, Landroid/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/app/Fragment;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_2
    iget v4, v2, Landroid/app/BackStackRecord$Op;->exitAnim:I

    invoke-virtual {v0, v4}, Landroid/app/Fragment;->setNextAnim(I)V

    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v4, v0}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;)V

    goto :goto_1

    :pswitch_3
    iget v4, v2, Landroid/app/BackStackRecord$Op;->exitAnim:I

    invoke-virtual {v0, v4}, Landroid/app/Fragment;->setNextAnim(I)V

    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v4, v0}, Landroid/app/FragmentManagerImpl;->hideFragment(Landroid/app/Fragment;)V

    goto :goto_1

    :pswitch_4
    iget v4, v2, Landroid/app/BackStackRecord$Op;->enterAnim:I

    invoke-virtual {v0, v4}, Landroid/app/Fragment;->setNextAnim(I)V

    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v4, v0}, Landroid/app/FragmentManagerImpl;->showFragment(Landroid/app/Fragment;)V

    goto :goto_1

    :pswitch_5
    iget v4, v2, Landroid/app/BackStackRecord$Op;->exitAnim:I

    invoke-virtual {v0, v4}, Landroid/app/Fragment;->setNextAnim(I)V

    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v4, v0}, Landroid/app/FragmentManagerImpl;->detachFragment(Landroid/app/Fragment;)V

    goto :goto_1

    :pswitch_6
    iget v4, v2, Landroid/app/BackStackRecord$Op;->enterAnim:I

    invoke-virtual {v0, v4}, Landroid/app/Fragment;->setNextAnim(I)V

    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v4, v0}, Landroid/app/FragmentManagerImpl;->attachFragment(Landroid/app/Fragment;)V

    goto :goto_1

    :pswitch_7
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v4, v0}, Landroid/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Landroid/app/Fragment;)V

    goto :goto_1

    :pswitch_8
    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v4, v6}, Landroid/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Landroid/app/Fragment;)V

    goto :goto_1

    :cond_2
    iget-boolean v4, p0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v5, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v5, v5, Landroid/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {v4, v5, v7}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    :cond_3
    return-void

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

    iget-object v3, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_2

    iget-object v3, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/BackStackRecord$Op;

    iget-object v0, v1, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget v3, p0, Landroid/app/BackStackRecord;->mTransition:I

    invoke-static {v3}, Landroid/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v3

    iget v4, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v0, v3, v4}, Landroid/app/Fragment;->setNextTransition(II)V

    :cond_0
    iget v3, v1, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown cmd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    iget v3, v1, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setNextAnim(I)V

    iget-object v3, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v3, v0}, Landroid/app/FragmentManagerImpl;->removeFragment(Landroid/app/Fragment;)V

    :goto_1
    iget-boolean v3, p0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v3, :cond_1

    iget v3, v1, Landroid/app/BackStackRecord$Op;->cmd:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v3, v0}, Landroid/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/app/Fragment;)V

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :pswitch_2
    iget v3, v1, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setNextAnim(I)V

    iget-object v3, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v3, v0, v6}, Landroid/app/FragmentManagerImpl;->addFragment(Landroid/app/Fragment;Z)V

    goto :goto_1

    :pswitch_3
    iget v3, v1, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setNextAnim(I)V

    iget-object v3, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v3, v0}, Landroid/app/FragmentManagerImpl;->showFragment(Landroid/app/Fragment;)V

    goto :goto_1

    :pswitch_4
    iget v3, v1, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setNextAnim(I)V

    iget-object v3, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v3, v0}, Landroid/app/FragmentManagerImpl;->hideFragment(Landroid/app/Fragment;)V

    goto :goto_1

    :pswitch_5
    iget v3, v1, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setNextAnim(I)V

    iget-object v3, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v3, v0}, Landroid/app/FragmentManagerImpl;->attachFragment(Landroid/app/Fragment;)V

    goto :goto_1

    :pswitch_6
    iget v3, v1, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setNextAnim(I)V

    iget-object v3, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v3, v0}, Landroid/app/FragmentManagerImpl;->detachFragment(Landroid/app/Fragment;)V

    goto :goto_1

    :pswitch_7
    iget-object v3, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v3, v5}, Landroid/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Landroid/app/Fragment;)V

    goto :goto_1

    :pswitch_8
    iget-object v3, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v3, v0}, Landroid/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Landroid/app/Fragment;)V

    goto :goto_1

    :cond_2
    iget-boolean v3, p0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    iget-object v3, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v4, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget v4, v4, Landroid/app/FragmentManagerImpl;->mCurState:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentManagerImpl;->moveToState(IZ)V

    :cond_3
    return-void

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

.method expandOps(Ljava/util/ArrayList;Landroid/app/Fragment;)Landroid/app/Fragment;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Landroid/app/Fragment;",
            ")",
            "Landroid/app/Fragment;"
        }
    .end annotation

    const/16 v11, 0x9

    const/4 v6, 0x0

    :goto_0
    iget-object v8, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_6

    iget-object v8, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/BackStackRecord$Op;

    iget v8, v5, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v8, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v8, v5, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    iget-object v8, v5, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v8, v5, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-ne v8, p2, :cond_0

    iget-object v8, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v9, Landroid/app/BackStackRecord$Op;

    iget-object v10, v5, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-direct {v9, v11, v10}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    invoke-virtual {v8, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    const/4 p2, 0x0

    goto :goto_1

    :pswitch_3
    iget-object v2, v5, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v1, v2, Landroid/app/Fragment;->mContainerId:I

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    :goto_2
    if-ltz v3, :cond_4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Fragment;

    iget v8, v4, Landroid/app/Fragment;->mContainerId:I

    if-ne v8, v1, :cond_1

    if-ne v4, v2, :cond_2

    const/4 v0, 0x1

    :cond_1
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_2
    if-ne v4, p2, :cond_3

    iget-object v8, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v9, Landroid/app/BackStackRecord$Op;

    invoke-direct {v9, v11, v4}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    invoke-virtual {v8, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    const/4 p2, 0x0

    :cond_3
    new-instance v7, Landroid/app/BackStackRecord$Op;

    const/4 v8, 0x3

    invoke-direct {v7, v8, v4}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    iget v8, v5, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iput v8, v7, Landroid/app/BackStackRecord$Op;->enterAnim:I

    iget v8, v5, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iput v8, v7, Landroid/app/BackStackRecord$Op;->popEnterAnim:I

    iget v8, v5, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iput v8, v7, Landroid/app/BackStackRecord$Op;->exitAnim:I

    iget v8, v5, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iput v8, v7, Landroid/app/BackStackRecord$Op;->popExitAnim:I

    iget-object v8, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    iget-object v8, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_5
    const/4 v8, 0x1

    iput v8, v5, Landroid/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_4
    iget-object v8, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    new-instance v9, Landroid/app/BackStackRecord$Op;

    invoke-direct {v9, v11, p2}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    invoke-virtual {v8, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    iget-object p2, v5, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    goto/16 :goto_1

    :cond_6
    return-object p2

    nop

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
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    sget-boolean v0, Landroid/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/app/FragmentManagerImpl;->addBackStackState(Landroid/app/BackStackRecord;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 2

    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBreadCrumbShortTitleRes()I
    .locals 1

    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 2

    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/BackStackRecord;->mManager:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 1

    iget v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/app/BackStackRecord;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition()I
    .locals 1

    iget v0, p0, Landroid/app/BackStackRecord;->mTransition:I

    return v0
.end method

.method public getTransitionStyle()I
    .locals 1

    iget v0, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    return v0
.end method

.method public hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2

    new-instance v0, Landroid/app/BackStackRecord$Op;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    return-object p0
.end method

.method interactsWith(I)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/BackStackRecord$Op;

    iget-object v4, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v4, :cond_0

    iget-object v4, v2, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v0, v4, Landroid/app/Fragment;->mContainerId:I

    :goto_1
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_1

    const/4 v4, 0x1

    return v4

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method interactsWith(Ljava/util/ArrayList;II)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BackStackRecord;",
            ">;II)Z"
        }
    .end annotation

    if-ne p3, p2, :cond_0

    const/4 v11, 0x0

    return v11

    :cond_0
    iget-object v11, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, -0x1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_6

    iget-object v11, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/BackStackRecord$Op;

    iget-object v11, v5, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v11, :cond_1

    iget-object v11, v5, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v0, v11, Landroid/app/Fragment;->mContainerId:I

    :goto_1
    if-eqz v0, :cond_5

    if-eq v0, v2, :cond_5

    move v2, v0

    move v1, p2

    :goto_2
    if-ge v1, p3, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/BackStackRecord;

    iget-object v11, v7, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v4, :cond_4

    iget-object v11, v7, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/BackStackRecord$Op;

    iget-object v11, v9, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    if-eqz v11, :cond_2

    iget-object v11, v9, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    iget v8, v11, Landroid/app/Fragment;->mContainerId:I

    :goto_4
    if-ne v8, v0, :cond_3

    const/4 v11, 0x1

    return v11

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    goto :goto_4

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    const/4 v11, 0x0

    return v11
.end method

.method public isAddToBackStackAllowed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/BackStackRecord;->mAllowAddToBackStack:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isPostponed()Z
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/BackStackRecord$Op;

    invoke-static {v0}, Landroid/app/BackStackRecord;->isFragmentPostponed(Landroid/app/BackStackRecord$Op;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2

    new-instance v0, Landroid/app/BackStackRecord$Op;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    return-object p0
.end method

.method public replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/BackStackRecord;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Must use non-zero containerViewId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/BackStackRecord;->doAddOp(ILandroid/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public runOnCommit(Ljava/lang/Runnable;)Landroid/app/FragmentTransaction;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "runnable cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/BackStackRecord;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    iget-object v0, p0, Landroid/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroid/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public runOnCommitRunnables()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Landroid/app/BackStackRecord;->mCommitRunnables:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public setBreadCrumbShortTitle(I)Landroid/app/FragmentTransaction;
    .locals 1

    iput p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput-object p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setBreadCrumbTitle(I)Landroid/app/FragmentTransaction;
    .locals 1

    iput p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/app/FragmentTransaction;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput-object p1, p0, Landroid/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setCustomAnimations(II)Landroid/app/FragmentTransaction;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/app/BackStackRecord;->setCustomAnimations(IIII)Landroid/app/FragmentTransaction;

    move-result-object v0

    return-object v0
.end method

.method public setCustomAnimations(IIII)Landroid/app/FragmentTransaction;
    .locals 0

    iput p1, p0, Landroid/app/BackStackRecord;->mEnterAnim:I

    iput p2, p0, Landroid/app/BackStackRecord;->mExitAnim:I

    iput p3, p0, Landroid/app/BackStackRecord;->mPopEnterAnim:I

    iput p4, p0, Landroid/app/BackStackRecord;->mPopExitAnim:I

    return-object p0
.end method

.method setOnStartPostponedListener(Landroid/app/Fragment$OnStartEnterTransitionListener;)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/BackStackRecord$Op;

    invoke-static {v0}, Landroid/app/BackStackRecord;->isFragmentPostponed(Landroid/app/BackStackRecord$Op;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-virtual {v2, p1}, Landroid/app/Fragment;->setOnStartEnterTransitionListener(Landroid/app/Fragment$OnStartEnterTransitionListener;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPrimaryNavigationFragment(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2

    new-instance v0, Landroid/app/BackStackRecord$Op;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    return-object p0
.end method

.method public setReorderingAllowed(Z)Landroid/app/FragmentTransaction;
    .locals 0

    iput-boolean p1, p0, Landroid/app/BackStackRecord;->mReorderingAllowed:Z

    return-object p0
.end method

.method public setTransition(I)Landroid/app/FragmentTransaction;
    .locals 0

    iput p1, p0, Landroid/app/BackStackRecord;->mTransition:I

    return-object p0
.end method

.method public setTransitionStyle(I)Landroid/app/FragmentTransaction;
    .locals 0

    iput p1, p0, Landroid/app/BackStackRecord;->mTransitionStyle:I

    return-object p0
.end method

.method public show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;
    .locals 2

    new-instance v0, Landroid/app/BackStackRecord$Op;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Landroid/app/BackStackRecord$Op;-><init>(ILandroid/app/Fragment;)V

    invoke-virtual {p0, v0}, Landroid/app/BackStackRecord;->addOp(Landroid/app/BackStackRecord$Op;)V

    return-object p0
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

    iget v1, p0, Landroid/app/BackStackRecord;->mIndex:I

    if-ltz v1, :cond_0

    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/BackStackRecord;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method trackAddedFragmentsInPop(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/app/BackStackRecord;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/BackStackRecord$Op;

    iget v2, v0, Landroid/app/BackStackRecord$Op;->cmd:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v2, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    iget-object v2, v0, Landroid/app/BackStackRecord$Op;->fragment:Landroid/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
