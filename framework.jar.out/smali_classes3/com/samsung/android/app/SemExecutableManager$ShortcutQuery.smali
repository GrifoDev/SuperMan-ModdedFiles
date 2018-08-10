.class public Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;
.super Ljava/lang/Object;
.source "SemExecutableManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/SemExecutableManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortcutQuery"
.end annotation


# static fields
.field public static final FLAG_GET_ALL_KINDS:I = 0xb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_GET_DYNAMIC:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_GET_KEY_FIELDS_ONLY:I = 0x4

.field public static final FLAG_GET_MANIFEST:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_GET_PINNED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_MATCH_ALL_KINDS:I = 0xb

.field public static final FLAG_MATCH_DYNAMIC:I = 0x1

.field public static final FLAG_MATCH_MANIFEST:I = 0x8

.field public static final FLAG_MATCH_PINNED:I = 0x2


# instance fields
.field mActivity:Landroid/content/ComponentName;

.field mChangedSince:J

.field mPackage:Ljava/lang/String;

.field mQueryFlags:I

.field mShortcutIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setActivity(Landroid/content/ComponentName;)Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;->mActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public setChangedSince(J)Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;->mChangedSince:J

    return-object p0
.end method

.method public setPackage(Ljava/lang/String;)Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setQueryFlags(I)Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;->mQueryFlags:I

    return-object p0
.end method

.method public setShortcutIds(Ljava/util/List;)Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/SemExecutableManager$ShortcutQuery;->mShortcutIds:Ljava/util/List;

    return-object p0
.end method
