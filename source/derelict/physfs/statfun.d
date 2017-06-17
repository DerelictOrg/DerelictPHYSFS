/*

Boost Software License - Version 1.0 - August 17th, 2003

Permission is hereby granted, free of charge, to any person or organization
obtaining a copy of the software and accompanying documentation covered by
this license (the "Software") to use, reproduce, display, distribute,
execute, and transmit the Software, and to prepare derivative works of the
Software, and to permit third-parties to whom the Software is furnished to
do so, all subject to the following:

The copyright notices in the Software and this entire statement, including
the above license grant, this restriction and the following disclaimer,
must be included in all copies of the Software, in whole or in part, and
all derivative works of the Software, unless such copies or derivative
works are solely in the form of machine-executable object code generated by
a source language processor.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE, TITLE AND NON-INFRINGEMENT. IN NO EVENT
SHALL THE COPYRIGHT HOLDERS OR ANYONE DISTRIBUTING THE SOFTWARE BE LIABLE
FOR ANY DAMAGES OR OTHER LIABILITY, WHETHER IN CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.

*/
module derelict.physfs.statfun;

version(Derelict_Static) version = DerelictPHYSFS_Static;
version(DerelictPHYSFS_Static):

public import derelict.physfs.types;

extern(System) @nogc nothrow {
    // 2.0 API
	void PHYSFS_getLinkedVersion(PHYSFS_Version*);
	int PHYSFS_init(const(char)*);
	int PHYSFS_deinit();
	const(PHYSFS_ArchiveInfo*)* PHYSFS_supportedArchiveTypes();
	void PHYSFS_freeList(void*);
	const(char)* PHYSFS_getLastError();
	const(char)* PHYSFS_getDirSeparator();
	void PHYSFS_permitSymbolicLinks(int);
	char** PHYSFS_getCdRomDirs();
	const(char)* PHYSFS_getBaseDir();
	const(char)* PHYSFS_getUserDir();
	const(char)* PHYSFS_getWriteDir();
	int PHYSFS_setWriteDir(const(char)*);
	int PHYSFS_addToSearchPath(const(char)*, int);
	int PHYSFS_removeFromSearchPath(const(char)*);
	char** PHYSFS_getSearchPath();
	int PHYSFS_setSaneConfig(const(char)*, const(char)*, const(char)*, int, int);
	int PHYSFS_mkdir(const(char)*);
	int PHYSFS_delete(const(char)*);
	const(char)* PHYSFS_getRealDir(const(char)*);
	char** PHYSFS_enumerateFiles(const(char)*);
	int PHYSFS_exists(const(char)*);
	int PHYSFS_isDirectory(const(char)*);
	int PHYSFS_isSymbolicLink(const(char)*);
	PHYSFS_sint64 PHYSFS_getLastModTime(const(char)*);
	PHYSFS_File* PHYSFS_openWrite(const(char)*);
	PHYSFS_File* PHYSFS_openAppend(const(char)*);
	PHYSFS_File* PHYSFS_openRead(const(char)*);
	int PHYSFS_close(PHYSFS_File*);
	PHYSFS_sint64 PHYSFS_read(PHYSFS_File*, void*, PHYSFS_uint32, PHYSFS_uint32);
	PHYSFS_sint64 PHYSFS_write(PHYSFS_File*, const(void)*, PHYSFS_uint32, PHYSFS_uint32);
	int PHYSFS_eof(PHYSFS_File*);
	PHYSFS_sint64 PHYSFS_tell(PHYSFS_File*);
	int PHYSFS_seek(PHYSFS_File*, PHYSFS_uint64);
	PHYSFS_sint64 PHYSFS_fileLength(PHYSFS_File*);
	int PHYSFS_setBuffer(PHYSFS_File*, PHYSFS_uint64);
	int PHYSFS_flush(PHYSFS_File*);
	PHYSFS_sint16 PHYSFS_swapSLE16(PHYSFS_sint16);
	PHYSFS_uint16 PHYSFS_swapULE16(PHYSFS_uint16);
	PHYSFS_sint32 PHYSFS_swapSLE32(PHYSFS_sint32);
	PHYSFS_uint32 PHYSFS_swapULE32(PHYSFS_uint32);
	PHYSFS_sint64 PHYSFS_swapSLE64(PHYSFS_sint64);
	PHYSFS_uint64 PHYSFS_swapULE64(PHYSFS_uint64);
	PHYSFS_sint16 PHYSFS_swapSBE16(PHYSFS_sint16);
	PHYSFS_uint16 PHYSFS_swapUBE16(PHYSFS_uint16);
	PHYSFS_sint32 PHYSFS_swapSBE32(PHYSFS_sint32);
	PHYSFS_uint32 PHYSFS_swapUBE32(PHYSFS_uint32);
	PHYSFS_sint64 PHYSFS_swapSBE64(PHYSFS_sint64);
	PHYSFS_sint64 PHYSFS_swapUBE64(PHYSFS_uint64);
	int PHYSFS_readSLE16(PHYSFS_File*, PHYSFS_sint16*);
	int PHYSFS_readULE16(PHYSFS_File*, PHYSFS_uint16*);
	int PHYSFS_readSLE32(PHYSFS_File*, PHYSFS_sint32*);
	int PHYSFS_readULE32(PHYSFS_File*, PHYSFS_uint32*);
	int PHYSFS_readSLE64(PHYSFS_File*, PHYSFS_sint64*);
	int PHYSFS_readULE64(PHYSFS_File*, PHYSFS_uint64*);
	int PHYSFS_readSBE16(PHYSFS_File*, PHYSFS_sint16*);
	int PHYSFS_readUBE16(PHYSFS_File*, PHYSFS_uint16*);
	int PHYSFS_readSBE32(PHYSFS_File*, PHYSFS_sint32*);
	int PHYSFS_readUBE32(PHYSFS_File*, PHYSFS_uint32*);
	int PHYSFS_readSBE64(PHYSFS_File*, PHYSFS_sint64*);
	int PHYSFS_readUBE64(PHYSFS_File*, PHYSFS_uint64*);
	int PHYSFS_writeSLE16(PHYSFS_File*, PHYSFS_sint16);
	int PHYSFS_writeULE16(PHYSFS_File*, PHYSFS_uint16);
	int PHYSFS_writeSLE32(PHYSFS_File*, PHYSFS_sint32);
	int PHYSFS_writeULE32(PHYSFS_File*, PHYSFS_uint32);
	int PHYSFS_writeSLE64(PHYSFS_File*, PHYSFS_sint64);
	int PHYSFS_writeULE64(PHYSFS_File*, PHYSFS_uint64);
	int PHYSFS_writeSBE16(PHYSFS_File*, PHYSFS_sint16);
	int PHYSFS_writeUBE16(PHYSFS_File*, PHYSFS_uint16);
	int PHYSFS_writeSBE32(PHYSFS_File*, PHYSFS_sint32);
	int PHYSFS_writeUBE32(PHYSFS_File*, PHYSFS_uint32);
	int PHYSFS_writeSBE64(PHYSFS_File*, PHYSFS_sint64);
	int PHYSFS_writeUBE64(PHYSFS_File*, PHYSFS_uint64);
	int PHYSFS_isInit();
	int PHYSFS_symbolicLinksPermitted();
	int PHYSFS_setAllocator(const(PHYSFS_Allocator)*);
	int PHYSFS_mount(const(char)*, const(char)*, int);
	const(char)* PHYSFS_getMountPoint(const(char)*);
	void PHYSFS_getCdRomDirsCallback(PHYSFS_StringCallback, void*);
	void PHYSFS_getSearchPathCallback(PHYSFS_StringCallback, void*);
	void PHYSFS_enumerateFilesCallback(const(char)*, PHYSFS_EnumFilesCallback, void*);
	void PHYSFS_utf8FromUcs4(const(PHYSFS_uint32)*, char*, PHYSFS_uint64);
	void PHYSFS_utf8ToUcs4(const(char)*, PHYSFS_uint32*, PHYSFS_uint64);
	void PHYSFS_utf8FromUcs2(const(PHYSFS_uint16)*, char*, PHYSFS_uint64);
	void PHYSFS_utf8ToUcs2(const(char)*, PHYSFS_uint16*, PHYSFS_uint64);
	void PHYSFS_utf8FromLatin1(const(char)*, char*, PHYSFS_uint64);
    // 2.1 API
	int PHYSFS_unmount(const(char)*);
	const(PHYSFS_Allocator)* PHYSFS_getAllocator();
	int PHYSFS_stat(const(char)*, PHYSFS_Stat*);
	void PHYSFS_utf8FromUtf16(const(PHYSFS_uint16)*, char*, PHYSFS_uint64);
	void PHYSFS_utf8ToUtf16(const(char)*, PHYSFS_uint16*, PHYSFS_uint64);
	PHYSFS_sint64 PHYSFS_readBytes(PHYSFS_File*, void*, PHYSFS_uint64);
	PHYSFS_sint64 PHYSFS_writeBytes(PHYSFS_File*, const(void)*, PHYSFS_uint64);
	int PHYSFS_mountIo(PHYSFS_Io*, const(char)*, const(char)*, int);
	int PHYSFS_mountMemory(const(void)*, PHYSFS_uint64, UnmountCallback, const(char)*, int);
	int PHYSFS_mountHandle(PHYSFS_File*, const(char)*, const(char)*, int);
	PHYSFS_ErrorCode PHYSFS_getLastErrorCode();
	const(char)* PHYSFS_getErrorByCode(PHYSFS_ErrorCode);
	void PHYSFS_setErrorCode(PHYSFS_ErrorCode);
	const(char)* PHYSFS_getPrefDir(const(char)*, const(char)*);
	int PHYSFS_registerArchiver(const(PHYSFS_Archiver)*);
	int PHYSFS_deregisterArchiver(const(char)*);
}
