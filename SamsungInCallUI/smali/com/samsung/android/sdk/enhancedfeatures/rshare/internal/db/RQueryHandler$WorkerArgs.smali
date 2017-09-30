.class public final Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler$WorkerArgs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/RQueryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "WorkerArgs"
.end annotation


# instance fields
.field public authority:Ljava/lang/String;

.field public cookie:Ljava/lang/Object;

.field public handler:Landroid/os/Handler;

.field public ops:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field public orderBy:Ljava/lang/String;

.field public projection:[Ljava/lang/String;

.field public result:Ljava/lang/Object;

.field public selection:Ljava/lang/String;

.field public selectionArgs:[Ljava/lang/String;

.field public uri:Landroid/net/Uri;

.field public values:Landroid/content/ContentValues;

.field public valuesList:[Landroid/content/ContentValues;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
