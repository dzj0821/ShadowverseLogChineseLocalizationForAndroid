.class final Lrx/android/content/OnSubscribeCursor;
.super Ljava/lang/Object;
.source "OnSubscribeCursor.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field private final cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lrx/android/content/OnSubscribeCursor;->cursor:Landroid/database/Cursor;

    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/android/content/OnSubscribeCursor;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber",
            "<-",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "subscriber":Lrx/Subscriber;, "Lrx/Subscriber<-Landroid/database/Cursor;>;"
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lrx/android/content/OnSubscribeCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lrx/android/content/OnSubscribeCursor;->cursor:Landroid/database/Cursor;

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/android/content/OnSubscribeCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 40
    iget-object v1, p0, Lrx/android/content/OnSubscribeCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 39
    :cond_1
    iget-object v0, p0, Lrx/android/content/OnSubscribeCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 40
    iget-object v0, p0, Lrx/android/content/OnSubscribeCursor;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 43
    :cond_2
    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    .line 44
    return-void
.end method
