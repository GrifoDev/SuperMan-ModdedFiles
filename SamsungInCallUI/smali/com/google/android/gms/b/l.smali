.class public final Lcom/google/android/gms/b/l;
.super Ljava/lang/Object;


# static fields
.field public static final a:[I

.field public static final b:[J

.field public static final c:[F

.field public static final d:[D

.field public static final e:[Z

.field public static final f:[Ljava/lang/String;

.field public static final g:[[B

.field public static final h:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/b/l;->a:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/b/l;->b:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/b/l;->c:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/b/l;->d:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/b/l;->e:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/b/l;->f:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/b/l;->g:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/b/l;->h:[B

    return-void
.end method

.method public static a(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method public static a(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method
