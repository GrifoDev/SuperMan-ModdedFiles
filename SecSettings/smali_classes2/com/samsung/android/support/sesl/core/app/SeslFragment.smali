.class public Lcom/samsung/android/support/sesl/core/app/SeslFragment;
.super Ljava/lang/Object;
.source "SeslFragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;,
        Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;,
        Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;,
        Lcom/samsung/android/support/sesl/core/app/SeslFragment$SavedState;
    }
.end annotation


# static fields
.field static final USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final sClassMap:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mAdded:Z

.field mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mCheckedForLoaderManager:Z

.field mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

.field mChildNonConfig:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mIsNewlyAdded:Z

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

.field mLoadersStarted:Z

.field mMenuVisible:Z

.field mParentFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field mPerformedCreateView:Z

.field mPostponedAlpha:F

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->sClassMap:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTargetIndex:I

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mUserVisibleHint:Z

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->callStartTransitionListener()V

    return-void
.end method

.method private callStartTransitionListener()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mEnterTransitionPostponed:Z

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iput-object v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;

    :goto_0
    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;->onStartEnterTransition()V

    goto :goto_1
.end method

.method private ensureAnimationInfo()Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    goto :goto_0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 10
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    sget-object v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->sClassMap:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v7, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    :goto_0
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez p2, :cond_1

    :goto_1
    return-object v6

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->sClassMap:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v7, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to instantiate fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :cond_1
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v6, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    :catch_1
    move-exception v3

    new-instance v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to instantiate fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :catch_2
    move-exception v2

    new-instance v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to instantiate fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :catch_3
    move-exception v4

    new-instance v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to instantiate fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": could not find Fragment constructor"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :catch_4
    move-exception v5

    new-instance v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to instantiate fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": calling Fragment constructor caused an exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
.end method

.method static isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    :try_start_0
    sget-object v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->sClassMap:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    :goto_0
    const-class v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->sClassMap:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mParentFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mArguments:Landroid/os/Bundle;

    if-nez v0, :cond_3

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v0, :cond_4

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_5

    :goto_5
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_6

    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getNextAnim()I

    move-result v0

    if-nez v0, :cond_7

    :goto_7
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_8

    :goto_8
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-nez v0, :cond_9

    :goto_9
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_a

    :goto_a
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_b

    :goto_b
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-nez v0, :cond_c

    :goto_c
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_d

    :goto_d
    return-void

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mParentFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_6

    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getNextAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_7

    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_a
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_b
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getStateAfterAnimating()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_b

    :cond_c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "SeslLoader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_d
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_d
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_1

    return-object v1

    :cond_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v0

    return-object v0
.end method

.method public final getActivity()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    :cond_0
    return-object v0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$600(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$600(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$700(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$700(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method getAnimatingAway()Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    return-object v0

    :cond_0
    return-object v1
.end method

.method getAnimator()Landroid/animation/Animator;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final getChildFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->instantiateChildFragmentManager()V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchCreate()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchResume()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStart()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchActivityCreated()V

    goto :goto_0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$000(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method getEnterTransitionCallback()Landroid/app/SharedElementCallback;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$200(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method getExitTransitionCallback()Landroid/app/SharedElementCallback;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final getFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getChildFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getNextAnim()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mNextAnim:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getNextTransition()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mNextTransition:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getNextTransitionStyle()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mNextTransitionStyle:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$300(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$300(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$100(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$100(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$400(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$500(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$500(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_0
.end method

.method getStateAfterAnimating()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mStateAfterAnimating:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method initState()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRemoving:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFromLayout:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInLayout:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRestored:Z

    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    return-void
.end method

.method instantiateChildFragmentManager()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    new-instance v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$2;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->attachController(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Fragment has not been attached yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isDetached()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    return v0
.end method

.method isHideReplaced()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mIsHideReplaced:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final isInBackStack()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isPostponed()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mEnterTransitionPostponed:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isStateSaved()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->isStateSaved()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method noteStateNotSaved()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->noteStateNotSaved()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onAttach(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onAttachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->isStateAtLeast(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchCreate()V

    goto :goto_0
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getActivity()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doDestroy()V

    goto :goto_1
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method public onDetach()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doStart()V

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    goto :goto_0
.end method

.method public onStop()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method peekChildFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    return-object v0
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->noteStateNotSaved()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchActivityCreated()V

    goto :goto_1
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_2
    return v2
.end method

.method performCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onCreate(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v0, :cond_1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->noteStateNotSaved()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_1
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mPerformedCreateView:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->noteStateNotSaved()V

    goto :goto_0
.end method

.method performDestroy()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_0

    :goto_0
    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onDestroy()V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v0, :cond_1

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchDestroy()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDestroyView()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onDestroyView()V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-nez v0, :cond_2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mPerformedCreateView:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchDestroyView()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doReportNextStart()V

    goto :goto_1
.end method

.method performDetach()V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onDetach()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchDestroy()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Child SeslFragmentManager of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was not  destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v1
.end method

.method performLowMemory()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onLowMemory()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchLowMemory()V

    goto :goto_0
.end method

.method performMultiWindowModeChanged(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    goto :goto_0
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_1
.end method

.method performPause()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onPause()V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v0, :cond_1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchPause()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performPictureInPictureModeChanged(Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onPictureInPictureModeChanged(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    goto :goto_0
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-nez v1, :cond_3

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_1
.end method

.method performReallyStop()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchReallyStop()V

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    if-eqz v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getRetainLoaders()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doStop()V

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doRetain()V

    goto :goto_1
.end method

.method performResume()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onResume()V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->noteStateNotSaved()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execPendingActions()Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchResume()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execPendingActions()Z

    goto :goto_1
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method performStart()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onStart()V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-nez v0, :cond_3

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->noteStateNotSaved()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execPendingActions()Z

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStart()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doReportStart()V

    goto :goto_2
.end method

.method performStop()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onStop()V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v0, :cond_1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStop()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method restoreChildFragmentState(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "android:support:fragments"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v1, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildNonConfig:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildNonConfig:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchCreate()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->instantiateChildFragmentManager()V

    goto :goto_1
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v0, :cond_1

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setAnimatingAway(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->ensureAnimationInfo()Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    return-void
.end method

.method setAnimator(Landroid/animation/Animator;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->ensureAnimationInfo()Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-gez v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mArguments:Landroid/os/Bundle;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SeslFragment already active and state has been saved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setHideReplaced(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->ensureAnimationInfo()Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    move-result-object v0

    iput-boolean p1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mIsHideReplaced:Z

    return-void
.end method

.method final setIndex(ILcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 2

    iput p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    goto :goto_0
.end method

.method setNextAnim(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->ensureAnimationInfo()Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mNextAnim:I

    return-void

    :cond_1
    if-nez p1, :cond_0

    return-void
.end method

.method setNextTransition(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->ensureAnimationInfo()Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iput p1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mNextTransition:I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iput p2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mNextTransitionStyle:I

    return-void

    :cond_1
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void
.end method

.method setOnStartEnterTransitionListener(Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->ensureAnimationInfo()Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mEnterTransitionPostponed:Z

    if-nez v0, :cond_3

    :goto_0
    if-nez p1, :cond_4

    :goto_1
    return-void

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;->startListening()V

    goto :goto_1
.end method

.method setStateAfterAnimating(I)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->ensureAnimationInfo()Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mStateAfterAnimating:I

    return-void
.end method

.method public startPostponedEnterTransition()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->ensureAnimationInfo()Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mEnterTransitionPostponed:Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->callStartTransitionListener()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$1;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslDebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-gez v1, :cond_0

    :goto_0
    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    if-nez v1, :cond_1

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    if-nez v1, :cond_2

    :goto_2
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
