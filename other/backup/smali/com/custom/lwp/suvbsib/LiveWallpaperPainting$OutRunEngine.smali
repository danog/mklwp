.class Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "LiveWallpaperPainting.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OutRunEngine"
.end annotation


# instance fields
.field private fps:I

.field private height:I

.field private final mDrawWallpaper:Ljava/lang/Runnable;

.field private mVisible:Z

.field private picIdx:I

.field private prefs:Landroid/content/SharedPreferences;

.field private size:Ljava/lang/String;

.field final synthetic this$0:Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;

.field private width:I


# direct methods
.method constructor <init>(Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string v5, ", "

    .line 152
    iput-object p1, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->this$0:Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;

    .line 143
    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 278
    iput v4, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->picIdx:I

    .line 280
    iput v6, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->fps:I

    .line 281
    const-string v0, "480, 854"

    iput-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->size:Ljava/lang/String;

    .line 282
    const/16 v0, 0x140

    iput v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->width:I

    .line 283
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->height:I

    .line 285
    new-instance v0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine$1;

    invoke-direct {v0, p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine$1;-><init>(Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;)V

    iput-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->mDrawWallpaper:Ljava/lang/Runnable;

    .line 145
    const-string v0, "com.custom.lwp.suvbsib"

    .line 144
    invoke-virtual {p1, v0, v4}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->prefs:Landroid/content/SharedPreferences;

    .line 146
    iget-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 147
    invoke-virtual {p1}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->setBitMaps()V

    .line 148
    iget-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "preference_fps"

    const-string v2, "20"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->fps:I

    .line 149
    iget-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "preference_size"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->width:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->size:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->size:Ljava/lang/String;

    const-string v1, ", "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->width:I

    .line 151
    iget-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->size:Ljava/lang/String;

    const-string v1, ", "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->height:I

    return-void
.end method

.method private drawEye(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->this$0:Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;

    iget-object v0, v0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->bitmaps:[Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->drawAnim(Landroid/graphics/Canvas;[Landroid/graphics/Bitmap;)V

    .line 241
    return-void
.end method


# virtual methods
.method drawAnim(Landroid/graphics/Canvas;[Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "c"
    .parameter "pics"

    .prologue
    .line 271
    iget v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->picIdx:I

    aget-object v0, p2, v0

    invoke-virtual {p0, v0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->resize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    .line 272
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->height:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/4 v3, 0x0

    .line 271
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 273
    iget v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->picIdx:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->picIdx:I

    .line 274
    iget v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->picIdx:I

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    .line 275
    const/4 v0, 0x0

    iput v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->picIdx:I

    .line 276
    :cond_0
    return-void
.end method

.method drawFrame()V
    .locals 6

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    .line 219
    .local v1, holder:Landroid/view/SurfaceHolder;
    const/4 v0, 0x0

    .line 221
    .local v0, c:Landroid/graphics/Canvas;
    :try_start_0
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 224
    invoke-direct {p0, v0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->drawEye(Landroid/graphics/Canvas;)V

    .line 225
    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_0
    if-eqz v0, :cond_1

    .line 229
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->this$0:Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;

    invoke-static {v2}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->access$0(Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->mDrawWallpaper:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    iget-boolean v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->mVisible:Z

    if-eqz v2, :cond_2

    .line 235
    iget-object v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->this$0:Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;

    invoke-static {v2}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->access$0(Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->mDrawWallpaper:Ljava/lang/Runnable;

    const/16 v4, 0x3e8

    iget v5, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->fps:I

    div-int/2addr v4, v5

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    :cond_2
    return-void

    .line 227
    :catchall_0
    move-exception v2

    .line 228
    if-eqz v0, :cond_3

    .line 229
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 230
    :cond_3
    throw v2
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "surfaceHolder"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->setTouchEventsEnabled(Z)V

    .line 167
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 171
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 172
    iget-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->this$0:Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;

    invoke-static {v0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->access$0(Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->mDrawWallpaper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "xStep"
    .parameter "yStep"
    .parameter "xPixels"
    .parameter "yPixels"

    .prologue
    .line 215
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4
    .parameter "prefs"
    .parameter "key"

    .prologue
    const-string v3, ", "

    .line 156
    iget-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->this$0:Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;

    invoke-virtual {v0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->setBitMaps()V

    .line 157
    const-string v0, "preference_fps"

    const-string v1, "20"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->fps:I

    .line 158
    const-string v0, "preference_size"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->size:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->size:Ljava/lang/String;

    const-string v1, ", "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->width:I

    .line 160
    iget-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->size:Ljava/lang/String;

    const-string v1, ", "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->height:I

    .line 161
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 195
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 197
    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 202
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->mVisible:Z

    .line 208
    iget-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->this$0:Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;

    invoke-static {v0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->access$0(Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->mDrawWallpaper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    const/4 v1, 0x1

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->mVisible:Z

    .line 178
    iget-boolean v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->mVisible:Z

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->drawFrame()V

    .line 180
    :cond_0
    return-void

    .line 177
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->mVisible:Z

    .line 185
    if-eqz p1, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->drawFrame()V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->this$0:Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;

    invoke-static {v0}, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;->access$0(Lcom/custom/lwp/suvbsib/LiveWallpaperPainting;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->mDrawWallpaper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method resize(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "pic"

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v9

    .line 245
    .local v9, r:Ljava/lang/Runtime;
    invoke-virtual {v9}, Ljava/lang/Runtime;->gc()V

    .line 247
    move-object v0, p1

    .line 249
    .local v0, bitmapOrg:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 250
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 251
    .local v4, height:I
    iget v8, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->width:I

    .line 252
    .local v8, newWidth:I
    iget v7, p0, Lcom/custom/lwp/suvbsib/LiveWallpaperPainting$OutRunEngine;->height:I

    .line 255
    .local v7, newHeight:I
    int-to-float v2, v8

    int-to-float v6, v3

    div-float v11, v2, v6

    .line 256
    .local v11, scaleWidth:F
    int-to-float v2, v7

    int-to-float v6, v4

    div-float v10, v2, v6

    .line 259
    .local v10, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 261
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 267
    const/4 v6, 0x1

    move v2, v1

    .line 266
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method
