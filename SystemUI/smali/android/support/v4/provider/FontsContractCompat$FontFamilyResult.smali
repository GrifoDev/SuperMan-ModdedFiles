.class public Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/provider/FontsContractCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontFamilyResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult$FontResultStatus;
    }
.end annotation


# instance fields
.field private final mFonts:[Landroid/support/v4/provider/FontsContractCompat$FontInfo;

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(I[Landroid/support/v4/provider/FontsContractCompat$FontInfo;)V
    .locals 0
    .param p2    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    iput-object p2, p0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->mFonts:[Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    return-void
.end method


# virtual methods
.method public getFonts()[Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->mFonts:[Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    return v0
.end method
