.class Lcom/android/keyguard/util/ShortcutManager$ShortcutData;
.super Ljava/lang/Object;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/util/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShortcutData"
.end annotation


# instance fields
.field enabled:Z

.field mAppLabel:Ljava/lang/String;

.field mComponentName:Landroid/content/ComponentName;

.field mDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/android/keyguard/util/ShortcutManager;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/util/ShortcutManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;->this$0:Lcom/android/keyguard/util/ShortcutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/util/ShortcutManager;Lcom/android/keyguard/util/ShortcutManager$ShortcutData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/util/ShortcutManager$ShortcutData;-><init>(Lcom/android/keyguard/util/ShortcutManager;)V

    return-void
.end method
