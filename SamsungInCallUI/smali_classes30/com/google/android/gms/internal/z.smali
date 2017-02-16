.class public Lcom/google/android/gms/internal/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/aa;


# instance fields
.field private final ab:I

.field private final cn:Lcom/google/android/gms/internal/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/aa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/z;->CREATOR:Lcom/google/android/gms/internal/aa;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/ab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/z;->ab:I

    iput-object p2, p0, Lcom/google/android/gms/internal/z;->cn:Lcom/google/android/gms/internal/ab;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ab;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/z;->ab:I

    iput-object p1, p0, Lcom/google/android/gms/internal/z;->cn:Lcom/google/android/gms/internal/ab;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ae$b;)Lcom/google/android/gms/internal/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ae$b",
            "<**>;)",
            "Lcom/google/android/gms/internal/z;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/ab;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/z;

    check-cast p0, Lcom/google/android/gms/internal/ab;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/z;-><init>(Lcom/google/android/gms/internal/ab;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported safe parcelable field converter class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method O()Lcom/google/android/gms/internal/ab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->cn:Lcom/google/android/gms/internal/ab;

    return-object v0
.end method

.method public P()Lcom/google/android/gms/internal/ae$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ae$b",
            "<**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->cn:Lcom/google/android/gms/internal/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/z;->cn:Lcom/google/android/gms/internal/ab;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There was no converter wrapped in this ConverterWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public describeContents()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/z;->CREATOR:Lcom/google/android/gms/internal/aa;

    const/4 v0, 0x0

    return v0
.end method

.method i()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/z;->ab:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    sget-object v0, Lcom/google/android/gms/internal/z;->CREATOR:Lcom/google/android/gms/internal/aa;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/aa;->a(Lcom/google/android/gms/internal/z;Landroid/os/Parcel;I)V

    return-void
.end method
