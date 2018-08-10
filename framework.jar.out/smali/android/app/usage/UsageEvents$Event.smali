.class public final Landroid/app/usage/UsageEvents$Event;
.super Ljava/lang/Object;
.source "UsageEvents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/UsageEvents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# static fields
.field public static final CHOOSER_ACTION:I = 0x9

.field public static final CONFIGURATION_CHANGE:I = 0x5

.field public static final CONTINUE_PREVIOUS_DAY:I = 0x4

.field public static final END_OF_DAY:I = 0x3

.field public static final FLAG_IS_PACKAGE_INSTANT_APP:I = 0x1

.field public static final MOVE_TO_BACKGROUND:I = 0x2

.field public static final MOVE_TO_FOREGROUND:I = 0x1

.field public static final NONE:I = 0x0

.field public static final SHORTCUT_INVOCATION:I = 0x8

.field public static final SYSTEM_INTERACTION:I = 0x6

.field public static final USER_INTERACTION:I = 0x7


# instance fields
.field public mAction:Ljava/lang/String;

.field public mClass:Ljava/lang/String;

.field public mConfiguration:Landroid/content/res/Configuration;

.field public mContentAnnotations:[Ljava/lang/String;

.field public mContentType:Ljava/lang/String;

.field public mEventType:I

.field public mFlags:I

.field public mPackage:Ljava/lang/String;

.field public mShortcutId:Ljava/lang/String;

.field public mTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/usage/UsageEvents$Event;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iput-wide v0, p0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    iput-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    iput v0, p0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    iget v0, p0, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    return v0
.end method

.method public getObfuscatedIfInstantApp()Landroid/app/usage/UsageEvents$Event;
    .locals 2

    iget v1, p0, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0, p0}, Landroid/app/usage/UsageEvents$Event;-><init>(Landroid/app/usage/UsageEvents$Event;)V

    const-string/jumbo v1, "android.instant_app"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-string/jumbo v1, "android.instant_class"

    iput-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getShortcutId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    iget-wide v0, p0, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    return-wide v0
.end method
