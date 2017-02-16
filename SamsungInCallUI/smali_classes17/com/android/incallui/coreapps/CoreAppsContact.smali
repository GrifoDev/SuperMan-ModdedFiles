.class public Lcom/android/incallui/coreapps/CoreAppsContact;
.super Ljava/lang/Object;
.source "CoreAppsContact.java"


# instance fields
.field public bizImage:Landroid/graphics/drawable/Drawable;

.field public drawable:Landroid/graphics/drawable/Drawable;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public presenceMode:I

.field public status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/coreapps/CoreAppsContact;->presenceMode:I

    .line 35
    iput-object p1, p0, Lcom/android/incallui/coreapps/CoreAppsContact;->number:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsContact;->drawable:Landroid/graphics/drawable/Drawable;

    .line 37
    iput-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsContact;->bizImage:Landroid/graphics/drawable/Drawable;

    .line 39
    return-void
.end method
