.class interface abstract Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper$Triggers;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/db/DBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "Triggers"
.end annotation


# static fields
.field public static final TRIGGER_DELETE_CONTENTS_ON_DELETE_MEDIA:Ljava/lang/String; = "CREATE TRIGGER delete_contents_on_delete_media AFTER DELETE ON media BEGIN    DELETE FROM content   WHERE media_id=old._id;END;"

.field public static final TRIGGER_UPDATE_CHUNKS_ON_CANCEL_MEDIA:Ljava/lang/String; = "CREATE TRIGGER update_chunks_on_cancel_media AFTER UPDATE OF status ON media  WHEN new.status= 201 BEGIN     UPDATE content    SET status=0 WHERE media_id=old._id;END;"

.field public static final TRIGGER_UPDATE_COMPLETED_CONTENT_COUNT_ON_CONTENT_COMPLETE:Ljava/lang/String; = "CREATE TRIGGER update_completed_content_count_on_update_content_complete AFTER UPDATE OF status ON content  WHEN new.status= 3 BEGIN     UPDATE media    SET complete_count=complete_count+1 WHERE _id=old.media_id;END;"

.field public static final TRIGGER_UPDATE_PROGRESS_ON_CONTENT_PROGRESS:Ljava/lang/String; = "CREATE TRIGGER update_progress_on_update_content_progress AFTER UPDATE OF progress ON content  BEGIN     UPDATE media    SET media_progress=media_progress + (new.progress- old.progress)  WHERE _id=old.media_id;END;"
