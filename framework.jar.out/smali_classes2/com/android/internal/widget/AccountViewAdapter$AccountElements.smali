.class public Lcom/android/internal/widget/AccountViewAdapter$AccountElements;
.super Ljava/lang/Object;
.source "AccountViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/AccountViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountElements"
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mIcon:I

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "icon"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->mIcon:I

    .line 109
    iput-object p2, p0, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    iput-object p3, p0, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->mName:Ljava/lang/String;

    .line 111
    iput-object p4, p0, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->mNumber:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "icon"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;-><init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->mIcon:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/widget/AccountViewAdapter$AccountElements;->mNumber:Ljava/lang/String;

    return-object v0
.end method
