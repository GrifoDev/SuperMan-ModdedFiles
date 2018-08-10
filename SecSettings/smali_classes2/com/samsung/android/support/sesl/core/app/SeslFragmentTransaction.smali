.class public abstract Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
.super Ljava/lang/Object;
.source "SeslFragmentTransaction.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(ILcom/samsung/android/support/sesl/core/app/SeslFragment;Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
    .param p1    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract attach(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
.end method

.method public abstract commit()I
.end method

.method public abstract detach(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransaction;
.end method
