.class final Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataModelPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/widget/ActivityChooserModel;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 2

    iget-object v0, p0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;->this$0:Landroid/widget/ActivityChooserModel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/ActivityChooserModel;->-set1(Landroid/widget/ActivityChooserModel;Z)Z

    return-void
.end method
