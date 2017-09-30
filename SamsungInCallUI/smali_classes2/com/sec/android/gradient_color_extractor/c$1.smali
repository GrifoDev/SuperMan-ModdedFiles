.class final Lcom/sec/android/gradient_color_extractor/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gradient_color_extractor/c;->a([I[I)[Lcom/sec/android/gradient_color_extractor/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/gradient_color_extractor/c$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sec/android/gradient_color_extractor/c$a;Lcom/sec/android/gradient_color_extractor/c$a;)I
    .locals 3

    const v0, 0x47c35000    # 100000.0f

    iget v1, p2, Lcom/sec/android/gradient_color_extractor/c$a;->b:F

    iget v2, p1, Lcom/sec/android/gradient_color_extractor/c$a;->b:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/sec/android/gradient_color_extractor/c$a;

    check-cast p2, Lcom/sec/android/gradient_color_extractor/c$a;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gradient_color_extractor/c$1;->a(Lcom/sec/android/gradient_color_extractor/c$a;Lcom/sec/android/gradient_color_extractor/c$a;)I

    move-result v0

    return v0
.end method
