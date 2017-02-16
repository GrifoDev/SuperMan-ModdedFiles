.class public Landroid/app/FragmentController;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field private final mHost:Landroid/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/FragmentHostCallback",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/FragmentHostCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentHostCallback",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "callbacks":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    .line 52
    return-void
.end method

.method public static final createController(Landroid/app/FragmentHostCallback;)Landroid/app/FragmentController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentHostCallback",
            "<*>;)",
            "Landroid/app/FragmentController;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "callbacks":Landroid/app/FragmentHostCallback;, "Landroid/app/FragmentHostCallback<*>;"
    new-instance v0, Landroid/app/FragmentController;

    invoke-direct {v0, p0}, Landroid/app/FragmentController;-><init>(Landroid/app/FragmentHostCallback;)V

    return-object v0
.end method


# virtual methods
.method public attachHost(Landroid/app/Fragment;)V
    .locals 3
    .param p1, "parent"    # Landroid/app/Fragment;

    .prologue
    .line 83
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 84
    iget-object v1, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v2, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    .line 83
    invoke-virtual {v0, v1, v2, p1}, Landroid/app/FragmentManagerImpl;->attachController(Landroid/app/FragmentHostCallback;Landroid/app/FragmentContainer;Landroid/app/Fragment;)V

    .line 82
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 176
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 276
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 275
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 350
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public dispatchCreate()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchCreate()V

    .line 165
    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 312
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public dispatchDestroy()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 242
    return-void
.end method

.method public dispatchDestroyView()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchDestroyView()V

    .line 231
    return-void
.end method

.method public dispatchLowMemory()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchLowMemory()V

    .line 287
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 1
    .param p1, "isInMultiWindowMode"    # Z

    .prologue
    .line 254
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    .line 253
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 337
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 361
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 360
    return-void
.end method

.method public dispatchPause()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchPause()V

    .line 209
    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 1
    .param p1, "isInPictureInPictureMode"    # Z

    .prologue
    .line 265
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    .line 264
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 324
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public dispatchResume()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchResume()V

    .line 198
    return-void
.end method

.method public dispatchStart()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStart()V

    .line 187
    return-void
.end method

.method public dispatchStop()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->dispatchStop()V

    .line 220
    return-void
.end method

.method public dispatchTrimMemory(I)V
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 300
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->dispatchTrimMemory(I)V

    .line 299
    return-void
.end method

.method public doLoaderDestroy()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->doLoaderDestroy()V

    .line 404
    return-void
.end method

.method public doLoaderStart()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->doLoaderStart()V

    .line 386
    return-void
.end method

.method public doLoaderStop(Z)V
    .locals 1
    .param p1, "retain"    # Z

    .prologue
    .line 398
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroid/app/FragmentHostCallback;->doLoaderStop(Z)V

    .line 397
    return-void
.end method

.method public dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 437
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentHostCallback;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public execPendingActions()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroid/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getActiveFragmentsOnTopActivity()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->getActiveFragmentsOnTopActivity()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/app/FragmentManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public getLoaderManager()Landroid/app/LoaderManager;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->getLoaderManagerImpl()Landroid/app/LoaderManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public noteStateNotSaved()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 105
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 99
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public reportLoaderStart()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->reportLoaderStart()V

    .line 411
    return-void
.end method

.method public restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;
    .param p2, "nonConfig"    # Landroid/app/FragmentManagerNonConfig;

    .prologue
    .line 136
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V

    .line 135
    return-void
.end method

.method public restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p2, "nonConfigList":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 126
    new-instance v1, Landroid/app/FragmentManagerNonConfig;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Landroid/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 125
    invoke-virtual {v0, p1, v1}, Landroid/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroid/app/FragmentManagerNonConfig;)V

    .line 124
    return-void
.end method

.method public restoreLoaderNonConfig(Landroid/util/ArrayMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, "loaderManagers":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/LoaderManager;>;"
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroid/app/FragmentHostCallback;->restoreLoaderNonConfig(Landroid/util/ArrayMap;)V

    .line 429
    return-void
.end method

.method public retainLoaderNonConfig()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/app/FragmentHostCallback;->retainLoaderNonConfig()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method public retainNestedNonConfig()Landroid/app/FragmentManagerNonConfig;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->retainNonConfig()Landroid/app/FragmentManagerNonConfig;

    move-result-object v0

    return-object v0
.end method

.method public retainNonConfig()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->retainNonConfig()Landroid/app/FragmentManagerNonConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public saveAllState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Landroid/app/FragmentController;->mHost:Landroid/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/app/FragmentHostCallback;->mFragmentManager:Landroid/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
