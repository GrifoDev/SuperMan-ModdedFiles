.class Lcom/samsung/android/settings/notification/BadgeAppIconSettings$2;
.super Ljava/lang/Object;
.source "BadgeAppIconSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/BadgeAppIconSettings;->updateBadgeDescription()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/BadgeAppIconSettings;

.field final synthetic val$ani:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/BadgeAppIconSettings;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings$2;->this$0:Lcom/samsung/android/settings/notification/BadgeAppIconSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings$2;->val$ani:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/BadgeAppIconSettings$2;->val$ani:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void
.end method
