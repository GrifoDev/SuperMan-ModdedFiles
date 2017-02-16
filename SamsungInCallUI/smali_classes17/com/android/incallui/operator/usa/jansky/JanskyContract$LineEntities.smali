.class public final Lcom/android/incallui/operator/usa/jansky/JanskyContract$LineEntities;
.super Ljava/lang/Object;
.source "JanskyContract.java"

# interfaces
.implements Lcom/android/incallui/operator/usa/jansky/JanskyContract$CommonColumns;
.implements Lcom/android/incallui/operator/usa/jansky/JanskyContract$LineColumns;
.implements Lcom/android/incallui/operator/usa/jansky/JanskyContract$DeviceColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/operator/usa/jansky/JanskyContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LineEntities"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/line_entity"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/line_entity"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 446
    sget-object v0, Lcom/android/incallui/operator/usa/jansky/JanskyContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "line_entities"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/operator/usa/jansky/JanskyContract$LineEntities;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    return-void
.end method
