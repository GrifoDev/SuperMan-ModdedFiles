.class public Lcom/google/android/gms/plus/model/moments/Moment$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/moments/Moment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final iD:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private jB:Lcom/google/android/gms/internal/bx;

.field private jC:Lcom/google/android/gms/internal/bx;

.field private jh:Ljava/lang/String;

.field private js:Ljava/lang/String;

.field private jy:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->iD:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/plus/model/moments/Moment;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/bz;

    iget-object v1, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->iD:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->jh:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->jB:Lcom/google/android/gms/internal/bx;

    iget-object v4, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->js:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->jC:Lcom/google/android/gms/internal/bx;

    iget-object v6, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->jy:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/bz;-><init>(Ljava/util/Set;Ljava/lang/String;Lcom/google/android/gms/internal/bx;Ljava/lang/String;Lcom/google/android/gms/internal/bx;Ljava/lang/String;)V

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/Moment$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->jh:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->iD:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setResult(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/Moment$Builder;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/bx;

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->jB:Lcom/google/android/gms/internal/bx;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->iD:Ljava/util/Set;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setStartDate(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/Moment$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->js:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->iD:Ljava/util/Set;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setTarget(Lcom/google/android/gms/plus/model/moments/ItemScope;)Lcom/google/android/gms/plus/model/moments/Moment$Builder;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/bx;

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->jC:Lcom/google/android/gms/internal/bx;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->iD:Ljava/util/Set;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setType(Ljava/lang/String;)Lcom/google/android/gms/plus/model/moments/Moment$Builder;
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->jy:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/model/moments/Moment$Builder;->iD:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
