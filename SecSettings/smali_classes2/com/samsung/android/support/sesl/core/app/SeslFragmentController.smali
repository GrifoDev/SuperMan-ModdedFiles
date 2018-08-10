.class public Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;
.super Ljava/lang/Object;
.source "SeslFragmentController.java"


# instance fields
.field private final mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    return-void
.end method

.method public static final createController(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback",
            "<*>;)",
            "Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;)V

    return-object v0
.end method


# virtual methods
.method public attachHost(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->attachController(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchActivityCreated()V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public dispatchCreate()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchCreate()V

    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public dispatchDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchDestroy()V

    return-void
.end method

.method public dispatchLowMemory()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchLowMemory()V

    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public dispatchPause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchPause()V

    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public dispatchReallyStop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchReallyStop()V

    return-void
.end method

.method public dispatchResume()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchResume()V

    return-void
.end method

.method public dispatchStart()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStart()V

    return-void
.end method

.method public dispatchStop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStop()V

    return-void
.end method

.method public doLoaderDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->doLoaderDestroy()V

    return-void
.end method

.method public doLoaderStart()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->doLoaderStart()V

    return-void
.end method

.method public doLoaderStop(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->doLoaderStop(Z)V

    return-void
.end method

.method public dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public execPendingActions()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v0

    return-object v0
.end method

.method public getSupportFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getFragmentManagerImpl()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public noteStateNotSaved()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->noteStateNotSaved()V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public reportLoaderStart()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->reportLoaderStart()V

    return-void
.end method

.method public restoreAllState(Landroid/os/Parcelable;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;)V

    return-void
.end method

.method public restoreLoaderNonConfig(Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->restoreLoaderNonConfig(Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;)V

    return-void
.end method

.method public retainLoaderNonConfig()Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/sesl/core/app/SeslLoaderManager;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->retainLoaderNonConfig()Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public retainNestedNonConfig()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->retainNonConfig()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    move-result-object v0

    return-object v0
.end method

.method public saveAllState()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentController;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
