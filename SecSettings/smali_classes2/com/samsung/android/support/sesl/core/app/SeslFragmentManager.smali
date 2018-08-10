.class public abstract Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;
.super Ljava/lang/Object;
.source "SeslFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$FragmentLifecycleCallbacks;,
        Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager$OnBackStackChangedListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract beginTransaction()Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract executePendingTransactions()Z
.end method

.method public abstract findFragmentByTag(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
.end method

.method public abstract isStateSaved()Z
.end method

.method public abstract popBackStackImmediate()Z
.end method
