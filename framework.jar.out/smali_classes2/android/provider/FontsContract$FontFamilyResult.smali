.class public Landroid/provider/FontsContract$FontFamilyResult;
.super Ljava/lang/Object;
.source "FontsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/FontsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontFamilyResult"
.end annotation


# static fields
.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_REJECTED:I = 0x3

.field public static final STATUS_UNEXPECTED_DATA_PROVIDED:I = 0x2

.field public static final STATUS_WRONG_CERTIFICATES:I = 0x1


# instance fields
.field private final mFonts:[Landroid/provider/FontsContract$FontInfo;

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(I[Landroid/provider/FontsContract$FontInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/provider/FontsContract$FontFamilyResult;->mStatusCode:I

    iput-object p2, p0, Landroid/provider/FontsContract$FontFamilyResult;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    return-void
.end method


# virtual methods
.method public getFonts()[Landroid/provider/FontsContract$FontInfo;
    .locals 1

    iget-object v0, p0, Landroid/provider/FontsContract$FontFamilyResult;->mFonts:[Landroid/provider/FontsContract$FontInfo;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Landroid/provider/FontsContract$FontFamilyResult;->mStatusCode:I

    return v0
.end method
