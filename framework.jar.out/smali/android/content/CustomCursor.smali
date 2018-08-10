.class public Landroid/content/CustomCursor;
.super Landroid/database/AbstractWindowedCursor;
.source "CustomCursor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/CustomCursor$1;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY:Ljava/lang/String; = "ColumnNames"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/CustomCursor;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isAutoClose:Z

.field private mBundle:Landroid/os/Bundle;

.field private mColumnNames:[Ljava/lang/String;

.field private mCursorOwnerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/content/CustomCursor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/CustomCursor;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/CustomCursor$1;

    invoke-direct {v0}, Landroid/content/CustomCursor$1;-><init>()V

    sput-object v0, Landroid/content/CustomCursor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/database/CursorWindow;)V
    .locals 1

    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/CustomCursor;->isAutoClose:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/CustomCursor;->mBundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/CustomCursor;->mColumnNames:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/CustomCursor;->mCursorOwnerId:I

    invoke-super {p0, p1}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/CustomCursor;->isAutoClose:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/content/CustomCursor;->mBundle:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/CustomCursor;->mColumnNames:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/content/CustomCursor;->mCursorOwnerId:I

    invoke-virtual {p0, p1}, Landroid/content/CustomCursor;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/CustomCursor;->mColumnNames:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCursorOwnerId()I
    .locals 1

    iget v0, p0, Landroid/content/CustomCursor;->mCursorOwnerId:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    const-class v1, Landroid/database/CursorWindow;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow;

    invoke-super {p0, v0}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Landroid/content/CustomCursor;->mBundle:Landroid/os/Bundle;

    iget-object v1, p0, Landroid/content/CustomCursor;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/CustomCursor;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "ColumnNames"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/content/CustomCursor;->mColumnNames:[Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/CustomCursor;->mCursorOwnerId:I

    return-void
.end method

.method public setAutoClose(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/content/CustomCursor;->isAutoClose:Z

    return-void
.end method

.method public setColumnNames([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/content/CustomCursor;->mColumnNames:[Ljava/lang/String;

    return-void
.end method

.method public setCursorOwnerId(I)V
    .locals 0

    iput p1, p0, Landroid/content/CustomCursor;->mCursorOwnerId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/CustomCursor;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "ColumnNames"

    iget-object v2, p0, Landroid/content/CustomCursor;->mColumnNames:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/CustomCursor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/content/CustomCursor;->mCursorOwnerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/content/CustomCursor;->isAutoClose:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/CustomCursor;->close()V

    :cond_1
    return-void
.end method
