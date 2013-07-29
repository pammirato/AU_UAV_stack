"""autogenerated by genpy from AU_UAV_Team1/RequestPlaneIDRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RequestPlaneIDRequest(genpy.Message):
  _md5sum = "5be8a994a877237ddffcaee9593ab72a"
  _type = "AU_UAV_Team1/RequestPlaneIDRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int16 requestedID

"""
  __slots__ = ['requestedID']
  _slot_types = ['int16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       requestedID

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RequestPlaneIDRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.requestedID is None:
        self.requestedID = 0
    else:
      self.requestedID = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_struct_h.pack(self.requestedID))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 2
      (self.requestedID,) = _struct_h.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(_struct_h.pack(self.requestedID))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 2
      (self.requestedID,) = _struct_h.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_h = struct.Struct("<h")
"""autogenerated by genpy from AU_UAV_Team1/RequestPlaneIDResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RequestPlaneIDResponse(genpy.Message):
  _md5sum = "416bfeb9353c15e349b0805ccac980c0"
  _type = "AU_UAV_Team1/RequestPlaneIDResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int16 planeID


"""
  __slots__ = ['planeID']
  _slot_types = ['int16']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       planeID

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RequestPlaneIDResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.planeID is None:
        self.planeID = 0
    else:
      self.planeID = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_struct_h.pack(self.planeID))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 2
      (self.planeID,) = _struct_h.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(_struct_h.pack(self.planeID))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 2
      (self.planeID,) = _struct_h.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_h = struct.Struct("<h")
class RequestPlaneID(object):
  _type          = 'AU_UAV_Team1/RequestPlaneID'
  _md5sum = '58e09e6bef3056cafdf42d800c5df65f'
  _request_class  = RequestPlaneIDRequest
  _response_class = RequestPlaneIDResponse
