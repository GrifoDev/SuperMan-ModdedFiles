.class public Landroid/app/admin/PasswordMetrics;
.super Ljava/lang/Object;
.source "PasswordMetrics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/PasswordMetrics$1;
    }
.end annotation


# static fields
.field private static final CHAR_DIGIT:I = 0x2

.field private static final CHAR_LOWER_CASE:I = 0x0

.field private static final CHAR_SYMBOL:I = 0x3

.field private static final CHAR_UPPER_CASE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/admin/PasswordMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_ALLOWED_SEQUENCE:I = 0x3


# instance fields
.field public length:I

.field public letters:I

.field public lowerCase:I

.field public nonLetter:I

.field public numeric:I

.field public quality:I

.field public symbols:I

.field public upperCase:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/admin/PasswordMetrics$1;

    invoke-direct {v0}, Landroid/app/admin/PasswordMetrics$1;-><init>()V

    sput-object v0, Landroid/app/admin/PasswordMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iput p1, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    iput p2, p0, Landroid/app/admin/PasswordMetrics;->length:I

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/admin/PasswordMetrics;-><init>(II)V

    iput p3, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iput p4, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iput p5, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iput p6, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iput p7, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iput p8, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/admin/PasswordMetrics;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/admin/PasswordMetrics;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static categoryChar(C)I
    .locals 1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method public static computeForPassword(Ljava/lang/String;)Landroid/app/admin/PasswordMetrics;
    .locals 13

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v2, :cond_0

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :pswitch_2
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :pswitch_3
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    if-lez v6, :cond_1

    const/4 v10, 0x1

    :goto_2
    add-int v0, v3, v7

    if-lez v0, :cond_2

    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_3

    if-eqz v10, :cond_3

    const/high16 v1, 0x50000

    :goto_4
    new-instance v0, Landroid/app/admin/PasswordMetrics;

    invoke-direct/range {v0 .. v8}, Landroid/app/admin/PasswordMetrics;-><init>(IIIIIIII)V

    return-object v0

    :cond_1
    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    if-eqz v9, :cond_4

    const/high16 v1, 0x40000

    goto :goto_4

    :cond_4
    if-eqz v10, :cond_6

    invoke-static {p0}, Landroid/app/admin/PasswordMetrics;->maxLengthSequence(Ljava/lang/String;)I

    move-result v0

    const/4 v12, 0x3

    if-le v0, v12, :cond_5

    const/high16 v1, 0x20000

    goto :goto_4

    :cond_5
    const/high16 v1, 0x30000

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static maxDiffCategory(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/16 v0, 0xa

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static maxLengthSequence(Ljava/lang/String;)I
    .locals 12

    const/4 v11, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    return v11

    :cond_0
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/app/admin/PasswordMetrics;->categoryChar(C)I

    move-result v1

    sub-int v4, v3, v8

    if-ne v1, v0, :cond_1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v0}, Landroid/app/admin/PasswordMetrics;->maxDiffCategory(I)I

    move-result v11

    if-le v10, v11, :cond_2

    :cond_1
    sub-int v10, v2, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v9, v2

    const/4 v6, 0x0

    move v0, v1

    :goto_1
    move v8, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    if-eq v4, v5, :cond_3

    sub-int v10, v2, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v9, v2, -0x1

    :cond_3
    move v5, v4

    const/4 v6, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    return v7
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDefault()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->length:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->quality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->letters:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->upperCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->numeric:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->symbols:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
