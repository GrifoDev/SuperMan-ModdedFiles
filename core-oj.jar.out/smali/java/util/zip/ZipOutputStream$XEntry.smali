.class Ljava/util/zip/ZipOutputStream$XEntry;
.super Ljava/lang/Object;
.source "ZipOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XEntry"
.end annotation


# instance fields
.field public final entry:Ljava/util/zip/ZipEntry;

.field public final offset:J


# direct methods
.method public constructor <init>(Ljava/util/zip/ZipEntry;J)V
    .locals 0
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .param p2, "offset"    # J

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Ljava/util/zip/ZipOutputStream$XEntry;->entry:Ljava/util/zip/ZipEntry;

    .line 52
    iput-wide p2, p0, Ljava/util/zip/ZipOutputStream$XEntry;->offset:J

    .line 50
    return-void
.end method
