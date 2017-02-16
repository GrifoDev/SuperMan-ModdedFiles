.class public Lcom/google/android/gms/internal/co;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/cp;


# instance fields
.field private final ab:I

.field private final jh:Ljava/lang/String;

.field private final kq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/x;",
            ">;"
        }
    .end annotation
.end field

.field private final kr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final ks:Landroid/net/Uri;

.field private final kt:Ljava/lang/String;

.field private final ku:Ljava/lang/String;

.field private final kv:Ljava/lang/String;

.field private final kw:Landroid/os/Bundle;

.field private final kx:Landroid/os/Bundle;

.field private final ky:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/co;->CREATOR:Lcom/google/android/gms/internal/cp;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/x;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/co;->ab:I

    iput-object p2, p0, Lcom/google/android/gms/internal/co;->jh:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/co;->kq:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/co;->kr:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/co;->ks:Landroid/net/Uri;

    iput-object p6, p0, Lcom/google/android/gms/internal/co;->kt:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/co;->ku:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/co;->kv:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/co;->kw:Landroid/os/Bundle;

    iput-object p10, p0, Lcom/google/android/gms/internal/co;->kx:Landroid/os/Bundle;

    iput p11, p0, Lcom/google/android/gms/internal/co;->ky:I

    return-void
.end method


# virtual methods
.method public cB()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/x;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->kq:Ljava/util/List;

    return-object v0
.end method

.method public cC()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->kr:Ljava/util/List;

    return-object v0
.end method

.method public cD()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->ks:Landroid/net/Uri;

    return-object v0
.end method

.method public cE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->kt:Ljava/lang/String;

    return-object v0
.end method

.method public cF()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->ku:Ljava/lang/String;

    return-object v0
.end method

.method public cG()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->kv:Ljava/lang/String;

    return-object v0
.end method

.method public cH()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->kw:Landroid/os/Bundle;

    return-object v0
.end method

.method public cI()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->kx:Landroid/os/Bundle;

    return-object v0
.end method

.method public cJ()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/co;->ky:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/co;

    if-nez v1, :cond_1

    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/co;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v1, p0, Lcom/google/android/gms/internal/co;->ab:I

    iget v2, p1, Lcom/google/android/gms/internal/co;->ab:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->kq:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/co;->kq:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->kr:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/co;->kr:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->ks:Landroid/net/Uri;

    iget-object v2, p1, Lcom/google/android/gms/internal/co;->ks:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->kt:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/co;->kt:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->ku:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/co;->ku:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->kv:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/co;->kv:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->jh:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/co;->ab:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/co;->kq:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/co;->kr:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/co;->ks:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/co;->kt:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/co;->ku:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/co;->kv:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/r;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/co;->ab:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/cp;->a(Lcom/google/android/gms/internal/co;Landroid/os/Parcel;I)V

    return-void
.end method
