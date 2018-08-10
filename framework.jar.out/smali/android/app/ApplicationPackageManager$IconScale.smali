.class Landroid/app/ApplicationPackageManager$IconScale;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconScale"
.end annotation


# instance fields
.field private mAlpha:I

.field private mScale:F

.field final synthetic this$0:Landroid/app/ApplicationPackageManager;


# direct methods
.method public constructor <init>(Landroid/app/ApplicationPackageManager;IF)V
    .locals 0

    iput-object p1, p0, Landroid/app/ApplicationPackageManager$IconScale;->this$0:Landroid/app/ApplicationPackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/app/ApplicationPackageManager$IconScale;->mAlpha:I

    iput p3, p0, Landroid/app/ApplicationPackageManager$IconScale;->mScale:F

    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    iget v0, p0, Landroid/app/ApplicationPackageManager$IconScale;->mAlpha:I

    return v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Landroid/app/ApplicationPackageManager$IconScale;->mScale:F

    return v0
.end method
