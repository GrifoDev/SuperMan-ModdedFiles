.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$FragmentTag;
.super Ljava/lang/Object;
.source "SeslFragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FragmentTag"
.end annotation


# static fields
.field public static final Fragment:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    const v1, 0x1010003

    const/4 v2, 0x0

    aput v1, v0, v2

    const v1, 0x10100d0

    const/4 v2, 0x1

    aput v1, v0, v2

    const v1, 0x10100d1

    const/4 v2, 0x2

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$FragmentTag;->Fragment:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
