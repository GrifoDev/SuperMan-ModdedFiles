.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition$FragmentContainerTransition;
.super Ljava/lang/Object;
.source "SeslFragmentTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragmentTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentContainerTransition"
.end annotation


# instance fields
.field public firstOut:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field public firstOutIsPop:Z

.field public firstOutTransaction:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;

.field public lastIn:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field public lastInIsPop:Z

.field public lastInTransaction:Lcom/samsung/android/support/sesl/core/app/SeslBackStackRecord;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
