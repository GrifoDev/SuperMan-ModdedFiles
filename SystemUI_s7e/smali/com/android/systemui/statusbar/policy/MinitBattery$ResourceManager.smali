.class Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;
.super Ljava/lang/Object;
.source "MinitBattery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MinitBattery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceManager"
.end annotation


# instance fields
.field private mRes:Landroid/content/res/Resources;

.field private mResourceContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MinitBattery;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MinitBattery;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->this$0:Lcom/android/systemui/statusbar/policy/MinitBattery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v1, "com.three.minit.batteryresources"

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->mResourceContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->mRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->mRes:Landroid/content/res/Resources;

    const-string v1, "drawable"

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->mRes:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->mResourceContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MinitBattery$ResourceManager;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method
