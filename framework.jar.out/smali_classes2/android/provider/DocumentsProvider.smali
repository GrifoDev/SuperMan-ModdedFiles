.class public abstract Landroid/provider/DocumentsProvider;
.super Landroid/content/ContentProvider;
.source "DocumentsProvider.java"


# static fields
.field private static final MATCH_CHILDREN:I = 0x6

.field private static final MATCH_CHILDREN_TREE:I = 0x8

.field private static final MATCH_DOCUMENT:I = 0x5

.field private static final MATCH_DOCUMENT_TREE:I = 0x7

.field private static final MATCH_RECENT:I = 0x3

.field private static final MATCH_ROOT:I = 0x2

.field private static final MATCH_ROOTS:I = 0x1

.field private static final MATCH_SEARCH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DocumentsProvider"


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private callUnchecked(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v30, "android:ejectRoot"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_0

    const-string/jumbo v30, "uri"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v27

    check-cast v27, Landroid/net/Uri;

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    invoke-static/range {v27 .. v27}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/provider/DocumentsProvider;->ejectRoot(Ljava/lang/String;)V

    return-object v20

    :cond_0
    const-string/jumbo v30, "uri"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/net/Uri;

    invoke-virtual {v12}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_1

    new-instance v30, Ljava/lang/SecurityException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Requested authority "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " doesn\'t match provider "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v30

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    const-string/jumbo v30, "android:isChildDocument"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v12, v1, v2}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    const-string/jumbo v30, "android.content.extra.TARGET_URI"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v31, "result"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v6}, Landroid/provider/DocumentsProvider;->isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    :goto_0
    move-object/from16 v0, v20

    move-object/from16 v1, v31

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    return-object v20

    :cond_3
    const/16 v30, 0x0

    goto :goto_0

    :cond_4
    const-string/jumbo v30, "android:createDocument"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v12, v1, v2}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    const-string/jumbo v30, "mime_type"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v30, "_display_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v15, v9}, Landroid/provider/DocumentsProvider;->createDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    const-string/jumbo v30, "uri"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v30, "android:createWebLinkIntent"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v12, v1, v2}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    const-string/jumbo v30, "options"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Landroid/provider/DocumentsProvider;->createWebLinkIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/IntentSender;

    move-result-object v13

    const-string/jumbo v30, "result"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v30, "android:renameDocument"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v12, v1, v2}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    const-string/jumbo v30, "_display_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v9}, Landroid/provider/DocumentsProvider;->renameDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v30

    if-nez v30, :cond_7

    invoke-static {v8, v12}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_7
    const-string/jumbo v30, "uri"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/provider/DocumentsProvider;->revokeDocumentPermission(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v30, "android:deleteDocument"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v12, v1, v2}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/provider/DocumentsProvider;->deleteDocument(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/provider/DocumentsProvider;->revokeDocumentPermission(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v30, "android:copyDocument"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_b

    const-string/jumbo v30, "android.content.extra.TARGET_URI"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v29

    check-cast v29, Landroid/net/Uri;

    invoke-static/range {v29 .. v29}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v12, v1, v2}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v11, v1}, Landroid/provider/DocumentsProvider;->copyDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v30

    if-nez v30, :cond_a

    invoke-static {v8, v12}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_a
    const-string/jumbo v30, "uri"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v30, "android:moveDocument"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_d

    const-string/jumbo v30, "parentUri"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    check-cast v23, Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v22

    const-string/jumbo v30, "android.content.extra.TARGET_URI"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v29

    check-cast v29, Landroid/net/Uri;

    invoke-static/range {v29 .. v29}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v12, v1, v2}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    invoke-virtual {v0, v11, v1, v2}, Landroid/provider/DocumentsProvider;->moveDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v30

    if-nez v30, :cond_c

    invoke-static {v8, v12}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :cond_c
    const-string/jumbo v30, "uri"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v30, "android:removeDocument"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_e

    const-string/jumbo v30, "parentUri"

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    check-cast v23, Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v12, v1, v2}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/provider/DocumentsProvider;->removeDocument(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v30, "android:findDocumentPath"

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_14

    invoke-static {v12}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v12, v1, v2}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    :goto_2
    if-eqz v14, :cond_10

    invoke-static {v12}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v21

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, Landroid/provider/DocumentsProvider;->findDocumentPath(Ljava/lang/String;Ljava/lang/String;)Landroid/provider/DocumentsContract$Path;

    move-result-object v24

    if-eqz v14, :cond_13

    invoke-virtual/range {v24 .. v24}, Landroid/provider/DocumentsContract$Path;->getPath()Ljava/util/List;

    move-result-object v30

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_12

    const-string/jumbo v31, "DocumentsProvider"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Provider doesn\'t return path from the tree root. Expected: "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v32, " found: "

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v24 .. v24}, Landroid/provider/DocumentsContract$Path;->getPath()Ljava/util/List;

    move-result-object v30

    const/16 v33, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/util/LinkedList;

    invoke-virtual/range {v24 .. v24}, Landroid/provider/DocumentsContract$Path;->getPath()Ljava/util/List;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-direct {v10, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    :goto_4
    invoke-virtual {v10}, Ljava/util/LinkedList;->size()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_11

    invoke-virtual {v10}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v30

    xor-int/lit8 v30, v30, 0x1

    if-eqz v30, :cond_11

    invoke-virtual {v10}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_4

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v30

    const-string/jumbo v31, "android.permission.MANAGE_DOCUMENTS"

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    const/16 v21, 0x0

    goto/16 :goto_3

    :cond_11
    new-instance v24, Landroid/provider/DocumentsContract$Path;

    const/16 v30, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-direct {v0, v1, v10}, Landroid/provider/DocumentsContract$Path;-><init>(Ljava/lang/String;Ljava/util/List;)V

    :cond_12
    invoke-virtual/range {v24 .. v24}, Landroid/provider/DocumentsContract$Path;->getRootId()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_13

    const-string/jumbo v30, "DocumentsProvider"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Provider returns root id :"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v24 .. v24}, Landroid/provider/DocumentsContract$Path;->getRootId()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string/jumbo v32, " unexpectedly. Erase root id."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v25, Landroid/provider/DocumentsContract$Path;

    invoke-virtual/range {v24 .. v24}, Landroid/provider/DocumentsContract$Path;->getPath()Ljava/util/List;

    move-result-object v30

    const/16 v31, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/provider/DocumentsContract$Path;-><init>(Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v24, v25

    :cond_13
    const-string/jumbo v30, "result"

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    :cond_14
    new-instance v30, Ljava/lang/UnsupportedOperationException;

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Method not supported "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v30
.end method

.method private enforceTree(Landroid/net/Uri;)V
    .locals 5

    invoke-static {p1}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1, v0}, Landroid/provider/DocumentsProvider;->isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Document "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not a descendant of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-void
.end method

.method private static getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    if-nez v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/16 v1, 0x41

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    if-nez v1, :cond_2

    or-int/lit8 v0, v0, 0x40

    :cond_2
    return v0
.end method

.method private static getSortClause(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    :goto_0
    const-string/jumbo v1, "android:query-arg-sql-sort-order"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "android:query-arg-sort-columns"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroid/content/ContentResolver;->createSqlSortClause(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_1

    const-string/jumbo v0, "*/*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return v2

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const-string/jumbo v0, "/*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v1, p1, v1, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    return v0

    :cond_4
    return v1
.end method

.method private final openTypedAssetFileImpl(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_0

    const-string/jumbo v3, "android.content.extra.SIZE"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "android.content.extra.SIZE"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    invoke-virtual {p0, v1, v2, p4}, Landroid/provider/DocumentsProvider;->openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    return-object v3

    :cond_0
    const-string/jumbo v3, "*/*"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "r"

    invoke-virtual {p0, p1, v3}, Landroid/provider/DocumentsProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-virtual {p0, p1}, Landroid/provider/DocumentsProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0, p2}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "r"

    invoke-virtual {p0, p1, v3}, Landroid/provider/DocumentsProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    return-object v3

    :cond_2
    invoke-virtual {p0, v1, p2, p3, p4}, Landroid/provider/DocumentsProvider;->openTypedDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    return-object v3
.end method

.method private registerAuthority(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "root"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "root/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "root/*/recent"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "root/*/search"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "document/*"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "document/*/children"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "tree/*/document/*"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "tree/*/document/*/children"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 2

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/provider/DocumentsProvider;->registerAuthority(Ljava/lang/String;)V

    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must be exported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must grantUriPermissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "android.permission.MANAGE_DOCUMENTS"

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "android.permission.MANAGE_DOCUMENTS"

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must be protected by MANAGE_DOCUMENTS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void
.end method

.method public attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1

    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/provider/DocumentsProvider;->registerAuthority(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    const-string/jumbo v1, "android:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/provider/DocumentsProvider;->callUnchecked(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Landroid/os/ParcelableException;

    invoke-direct {v1, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5

    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x0

    return-object v3

    :pswitch_0
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, p1}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public copyDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Copy not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Create not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createWebLinkIntent(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/IntentSender;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "createWebLink is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteDocument(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ejectRoot(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Eject not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findDocumentPath(Ljava/lang/String;Ljava/lang/String;)Landroid/provider/DocumentsContract$Path;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "findDocumentPath not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentStreamTypes(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/provider/DocumentsProvider;->queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "mime_type"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "flags"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-wide/16 v6, 0x200

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    if-eqz v4, :cond_0

    invoke-static {p2, v4}, Landroid/provider/DocumentsProvider;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v5

    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v10

    :catch_0
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v10

    :catchall_0
    move-exception v5

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
.end method

.method public getDocumentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Landroid/provider/DocumentsProvider;->queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "mime_type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v1

    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    :catchall_0
    move-exception v1

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/provider/DocumentsProvider;->getDocumentStreamTypes(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return-object v3

    :pswitch_1
    const-string/jumbo v1, "vnd.android.document/root"

    return-object v1

    :pswitch_2
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/provider/DocumentsProvider;->getDocumentType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DocumentsProvider"

    const-string/jumbo v2, "Failed during getType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Insert not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public moveDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Move not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, v0}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    :cond_0
    return-object v0
.end method

.method public final openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    :cond_0
    return-object v0
.end method

.method public abstract openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Thumbnails not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/provider/DocumentsProvider;->openTypedAssetFileImpl(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/provider/DocumentsProvider;->openTypedAssetFileImpl(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openTypedDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileNotFoundException;

    const-string/jumbo v1, "The requested MIME type is not supported."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 4

    :try_start_0
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported Uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DocumentsProvider"

    const-string/jumbo v2, "Failed during query"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1

    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p2}, Landroid/provider/DocumentsProvider;->queryRoots([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    :pswitch_2
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Landroid/provider/DocumentsProvider;->queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    :pswitch_3
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getSearchDocumentsQuery(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p2}, Landroid/provider/DocumentsProvider;->querySearchDocuments(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    :pswitch_4
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Landroid/provider/DocumentsProvider;->queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    :pswitch_5
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    invoke-static {p1}, Landroid/provider/DocumentsContract;->isManageMode(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Landroid/provider/DocumentsProvider;->getSortClause(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, p2, v2}, Landroid/provider/DocumentsProvider;->queryChildDocumentsForManage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Landroid/provider/DocumentsProvider;->queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Pre-Android-O query format not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Pre-Android-O query format not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p3}, Landroid/provider/DocumentsProvider;->getSortClause(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/provider/DocumentsProvider;->queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public abstract queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public queryChildDocumentsForManage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Manage not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Recent not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract queryRoots([Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public querySearchDocuments(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Search not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public renameDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Rename not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final revokeDocumentPermission(Ljava/lang/String;)V
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/provider/DocumentsContract;->buildTreeDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    return-void
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Update not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
